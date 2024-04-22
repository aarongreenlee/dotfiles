#!/bin/bash

# Setup neovim
if [[ ! -L ~/.config/nvim ]]; then
    # The directory is not a symlink, proceed with removal
    rm -rf ~/.config/nvim
fi

# Create the symlink
ln -s ~/dotfiles/nvim ~/.config/nvim

echo "setup-nvim.sh complete"
