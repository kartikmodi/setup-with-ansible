{
  description = "Flake for home base";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    # explicitly declare lib from nixpkgs for usage as flake:lib
    lib = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
      inputs = {};
    };
  };

  outputs = { self, nixpkgs, home-manager, lib, ... }:
    let
      system = "x86_64-linux";
      username = "workstation";
      homeDirectory = "/home/${username}";
  pkgs = import nixpkgs {
    inherit system;
    config = {
      allowUnfree = true;
    };
  };

      # You can split these into separate modules for modularity
      baseModule = {
        home.username = username;
        home.homeDirectory = homeDirectory;

        home.packages = with pkgs; [ 
          htop open-webui awscli2 kubectl 
          #coder 
         openvscode-server 
        ];
        home.stateVersion = "25.05";

      };
     
      vscodeModule = {
        programs.vscode = {
          enable = true;
          package = pkgs.vscode;
          extensions = with pkgs.vscode-extensions; [
          jnoortheen.nix-ide
          timonwong.shellcheck
          foxundermoon.shell-format
          mads-hartmann.bash-ide-vscode
          redhat.ansible
          redhat.vscode-yaml
	 # ms-vscode.remote-server # Install this with code --install-extension ms-vscode.remote-server instead
          ms-vscode-remote.remote-ssh
        ];
          # settings = { "editor.tabSize" = 2; };
        };
      };
    in {
      homeConfigurations = {
        workstation = home-manager.lib.homeManagerConfiguration {
          inherit pkgs ;
          modules = [
            baseModule
            vscodeModule 
          ];
        };
      };
    };
}

