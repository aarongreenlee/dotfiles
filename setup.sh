#!/bin/bash

# Setup the dotfiles! This script should run on-demad and usually during setup
# or when things have just changed.

########## Variables
dir=~/dotfiles                           # dotfiles directory
olddir=~/dotfiles_old                    # old dotfiles backup directory
files="vimrc tmux.conf zshrc private"    # list of files/folders to symlink in homedir
##########

# install brew if needed
if ! command -v brew &> /dev/null
then
    printf "\nbrew needs to be installed\n"
    export PATH=$PATH:/opt/homebrew/bin 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"   
fi

# install zsh-users/antigen plugin manager for zsh
curl -L git.io/antigen > antigen.zsh
cp antigen.zsh ~/antigen.zsh

# install sh -c https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install neovim
printf "\ninstalling neovim\n"
brew install neovim

# create dotfiles_old in homedir
printf  "\nCreating $olddir for backup of any existing dotfiles in ~ ...\n"
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
printf "\nChanging to the $dir directory ...\n"
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "\nMoving any existing dotfiles from ~ to $olddir\n"
    mv ~/.$file ~/dotfiles_old/
    echo "\nCreating symlink to $file in home directory.\n"
    ln -s $dir/$file ~/.$file
    echo ""
done

# Setup neovim
cd $dir
sh ./setup-nvim.sh

# Setup ripgrep
echo "\nUpdating brew...\n"
brew update

echo "\nInstalling ripgrep...\n"
brew install ripgrep

echo "\nInstalling neovide\n"
brew install --cask neovide
