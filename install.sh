#!/bin/bash
dotfiles_dir=~/.dotfiles

#=====================================================#
# NOTES: For this to work this repository needs to be #
#        located in your home folder as ~/.dotfiles/  #
#=====================================================#

cd $dotfiles_dir

./install/packages.sh
./install/symlink.sh
./install/git.sh
./install/dconf.sh
./install/oh-my-zsh.sh
