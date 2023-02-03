#!/bin/bash

# Setup neovim
mkdir -p ~/.config/nvim
rm -rf ~/.config/nvim
cp -r ~/dotfiles/nvim ~/.config/nvim

echo "setup-nvim.sh complete"