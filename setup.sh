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
    echo "brew needs to be installed"
    export PATH=$PATH:/opt/homebrew/bin 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"   
fi

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "  Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
    echo ""
done

# Setup neovim
cd $dir
sh ./setup-nvim.sh

# Setup ripgrep
echo "Updating brew..."
brew update
echo "Installing ripgrep..."
brew install ripgrep
