#!/bin/bash

# This file installs software then delegates to other scripts that might be
# executed more frequently.

# create a source code directory
mkdir -p ~/repos

# install zsh-users/antigen plugin manager for zsh
curl -L git.io/antigen > antigen.zsh
cp antigen.zsh ~/antigen.zsh

# install brew if needed
if ! command -v brew &> /dev/null
then
    printf "\nbrew needs to be installed\n"
    export PATH=$PATH:/opt/homebrew/bin 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"   
fi

# install sh -c https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install neovim
printf "\ninstalling neovim\n"
brew install neovim

# Setup ripgrep, needed for some neovim plugins
echo "\nUpdating brew...\n"
brew update

echo "\nInstalling ripgrep...\n"
brew install ripgrep

# Install neovide, a neovim implementation using GPU
echo "\nInstalling neovide\n"
brew install --cask neovide

# Install AltTab to improve window switching on Mac
echo "\nInstalling AltTab\n"
brew install --cask alt-tab

# setup the terminal
sh ~/dotfiles/setup-terminal.sh
sh ~/dotfiles/setup-nvim.sh

