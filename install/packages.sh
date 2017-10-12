#!/bin/bash
dotfiles_dir=~/.dotfiles

#=======================================#
# Packages installation (using apt-get) #
#=======================================#

# PPAs
sudo add-apt-repository -y ppa:noobslab/themes

# Update
sudo apt-get update

# Install
sudo apt -y install python3
sudo apt -y install zsh
sudo apt -y install vim-gnome
sudo apt -y install curl
sudo apt -y install python-pip
sudo apt -y install tmux
sudo apt -y install python-dev
sudo apt -y install arc-theme
sudo apt -y install dconf-cli
sudo apt -y install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0 # For gnome shell system monitor

