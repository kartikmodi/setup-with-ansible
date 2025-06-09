{
  description = "Flake for home base";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, lib, ... }:
    let
      system = "x86_64-linux";
      username = "workstation";
      homeDirectory = "/home/${username}";

      pkgs = import nixpkgs { inherit system; };

      # You can split these into separate modules for modularity
      baseModule = {
        home.username = username;
        home.homeDirectory = homeDirectory;

        home.packages = with pkgs; [ htop git ];


      };

      vscodeModule = {
        programs.vscode = {
          enable = true;
          package = pkgs.vscode;
          # Add extensions, settings here if you want
          # extensions = with pkgs.vscode-extensions; [ ms-python.python ];
          # settings = { "editor.tabSize" = 2; };
        };
      };

    in {
      homeConfigurations = {
        workstation = home-manager.lib.homeManagerConfiguration {
          inherit pkgs system;
          modules = [
            baseModule
            vscodeModule
          ];
        };
      };
    };
}

