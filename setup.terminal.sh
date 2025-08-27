# Setup the dotfiles! This script should run on-demad and usually during setup
# or when things have just changed.

########## Variables
olddir=~/dotfiles_old                    # old dotfiles backup directory
files="vimrc tmux.conf zshrc private"    # list of files/folders to symlink in homedir
##########

# Setup neovim
cd ~/dotfiles
sh ./setup-nvim.sh

# create dotfiles_old in homedir
printf  "Creating $olddir for backup of any existing dotfiles in ~ ...\n"
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
cd ~/dotfiles
printf "\n"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir\n"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory.\n"
    ln -s ~/dotfiles/$file ~/.$file
    echo ""
done