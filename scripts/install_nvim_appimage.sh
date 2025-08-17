#!/bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage

mkdir -p /opt/nvim
mv nvim-linux-x86_64.appimage /opt/nvim/nvim

echo "Make sure to add /opt/nvim/ to PATH (e.g. in your .bashrc)"
