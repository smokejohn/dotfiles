#!/bin/bash
# This is a setup script will install required software and dependencies and copy all needed configuration

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

##########################
# Setup bash configuration
##########################

cp "${SCRIPT_DIR}"/bash/.bashrc "${HOME}"/
cp "${SCRIPT_DIR}"/bash/.bash_profile "${HOME}"/

###############################
# Setup Terminal (Kitty + Tmux)
###############################

sudo dnf install -y kitty tmux

mkdir -p "${HOME}"/.config/kitty
cp "${SCRIPT_DIR}"/.config/kitty/* "${HOME}"/.config/kitty

mkdir -p "${HOME}"/.config/tmux
cp "${SCRIPT_DIR}"/.config/tmux/* "${HOME}"/.config/tmux

######################################
# Setup Neovim (Requirements + Config)
######################################

sudo dnf install -y gcc make git ripgrep fd-find unzip neovim

mkdir -p "${HOME}"/.config/nvim
git clone git@github.com:smokejohn/kickstart.nvim.git "${HOME}"/.config/nvim/
