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
sudo apt -y install htop

# Gnome shell system monitor applet
wget $(curl -s https://api.github.com/repos/paradoxxxzero/gnome-shell-system-monitor-applet/releases/latest | grep tarball_url | cut -d '"' -f 4) -O /tmp/gnome-shell-system-monitor.tar.gz
mkdir -p /tmp/gnome-shell-system-monitor
tar -xzf /tmp/gnome-shell-system-monitor.tar.gz -C /tmp/gnome-shell-system-monitor
cd /tmp/gnome-shell-system-monitor/*
make install
rm -rf /tmp/gnome-shell-system-monitor*

# Pretty ping
curl https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping --output ~/bin/prettyping
chmod +x ~/bin/prettyping

# Fuzzy find
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# diff-so-fancy
curl -L https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy --output ~/bin/diff-so-fancy
chmod +x ~/bin/diff-so-fancy

# AWS-cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
cd /tmp
unzip awscliv2.zip
sudo ./aws/install
rm /tmp/awscliv2.zip

# Return to dotfiles install dir
cd $dotfiles_dir
