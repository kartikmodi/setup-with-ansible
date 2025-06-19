#!/usr/bin/env bash
set -ex

# NIX_DEBUG=2 
home-manager switch --flake /home/workstation/dotfiles#workstation --verbose # --show-trace