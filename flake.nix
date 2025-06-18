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
  # # 👇 Define a custom package from Git
  #     llama-cpp-localbuild = pkgs.stdenv.mkDerivation {
  #       name = "llama-cpp";
  #       src = pkgs.fetchgit {
  #         url = "https://github.com/ggml-org/llama.cpp.git";
  #         rev = "860a9e4eeff3eb2e7bd1cc38f65787cc6c8177af";
  #         sha256 = "8ITzkW1L6xB47rCvi4Olxj4TO6Vax/wLlqkC8omP5cw=";
  #       };

  #       nativeBuildInputs = [ pkgs.cudatoolkit ];
  #       buildPhase = ''
  #         /usr/bin/cmake -B build -DGGML_CUDA=on -DCMAKE_CUDA_ARCHITECTURES=86 
  #         /usr/bin/cmake --build build/ --config Release -j$(nproc)
  #       '';
  #       installPhase = ''
  #         mkdir -p ~/.local/bin/llama-cpp
  #         cp build/bin/* ~/.local/bin/llama-cpp/
  #       '';
  #     };
   
    in {
      homeConfigurations = {
        workstation = home-manager.lib.homeManagerConfiguration {
          inherit pkgs ;
          modules = [{
            home.username = username;
        home.homeDirectory = homeDirectory;

        home.packages = with pkgs; [ 
          
          drawio
          open-webui  
          asdf-vm
          uv
          pcloud
          dropbox
          cozy-drive
          rclone
          rclone-ui
          megasync
          zoom-us
          slack
          bitwarden-desktop
          _1password-gui
          google-chrome
          firefox-bin
          brave
         gimp3-with-plugins
       openshot-qt
       vlc
       stremio
       solaar
      #  obs-plugins
       obs-studio
       inkscape-with-extensions
       kdePackages.kdenlive
       krita
       frostwire-bin
        tribler
      postgresql
      protonvpn-gui
      flameshot
      byobu #tmux
      hollywood
      shellcheck
      bash-completion
      joplin-desktop
      qalculate-qt
      pdfsam-basic
      scrcpy  
      qtscrcpy
      goverlay
mangohud
mangojuice
biglybt
aria2
uget
uget-integrator
# network
wget2
whois
wireshark

# cli tools
tree

rsync
unison
remmina
# bfg-repo-cleaner
# rustdesk-flutter
# rustdesk
# rustdesk-server
# android-tools
# androidenv.androidPkgs.platform-tools

# xapp, libindicator, libindicator-gtk3
# ananicy-cpp


  # - vim
  #     - vim-runtime
  #     - vim-doc
  #     - vim-scripts
  #     - vim-gtk3
        ];
        home.stateVersion = "25.05";

        programs.vscode = {
          enable = true;
          package = pkgs.vscode;
          extensions = with pkgs.vscode-extensions; [
          jnoortheen.nix-ide
          timonwong.shellcheck
          foxundermoon.shell-format
          mads-hartmann.bash-ide-vscode
          ms-python.python
          ms-python.vscode-pylance
          redhat.ansible
          redhat.vscode-yaml
          ms-vscode-remote.remote-ssh
          ms-vscode-remote.remote-ssh-edit
          saoudrizwan.claude-dev
        ];
          # settings = { "editor.tabSize" = 2; };
        };}
          ];
        };
      };
    };
}

