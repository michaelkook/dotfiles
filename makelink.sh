
#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

#dir=~/Documents/work_space/dotfiles/config/
dir=~/dotfiles/config/
#nvim_init=~/Documents/work_space/dotfiles/config/init.vim
nvim_init=~/dotfiles/config/init.vim
nvim_config_dir=~/.config/nvim
olddir=~/dotfiles_old/
files="tmux.conf tmux.conf.local" 

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "Moving any existing dotvim_file from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# for neovim
mv $nvim_config_dir/init.vim $olddir
mkdir -p $nvim_config_dir
cp $nvim_init  $nvim_config_dir
