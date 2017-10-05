#!/bin/zsh
#===============================================================================
#
#            NOTES: For this to work this repository needs to be
#                   located in your home folder as ~/.dotfiles/
#
#===============================================================================

sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update

sudo apt-get -y install python3
sudo apt-get -y install zsh
sudo apt-get -y install vim-gnome
sudo apt-get -y install curl
sudo apt-get -y install python-pip
sudo apt-get -y install tmux
sudo apt-get -y install python-dev
sudo apt-get -y install arc-theme
sudo apt-get install dconf-cli

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symlink dotfiles
dotfiles_dir=~/.dotfiles

# Remove existing dotfiles
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -f ~/.vimrc > /dev/null 2>&1
sudo rm -f ~/.zshrc > /dev/null 2>&1
sudo rm -f ~/.ssh/config > /dev/null 2>&1
sudo rm -f ~/.aliasrc > /dev/null 2>&1
sudo rm -f ~/.scripts > /dev/null 2>&1
sudo rm -f ~/.gitignore_global > /dev/null 2>&1
sudo rm -f ~/.tmux.conf > /dev/null 2>&1

# Symlink
ln -sf $dotfiles_dir/dotfiles/.vim ~/.vim
ln -sf $dotfiles_dir/dotfiles/.vimrc ~/.vimrc
ln -sf $dotfiles_dir/dotfiles/.zshrc ~/.zshrc
ln -sf $dotfiles_dir/dotfiles/.ssh_config ~/.ssh/config
ln -sf $dotfiles_dir/dotfiles/.aliasrc ~/.aliasrc
ln -sf $dotfiles_dir/scripts ~/.scripts
ln -sf $dotfiles_dir/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf $dotfiles_dir/dotfiles/.tmux.conf ~/.tmux.conf

# Local binaries
mkdir -p ~/bin
ln -sf $dotfiles_dir/bin/* ~/bin/

touch ~/.zshrc.local

# Fonts
mkdir -p ~/.fonts
ln -sf $dotfiles_dir/resources/fonts/PowerlineSymbols.otf ~/.fonts/PowerlineSymbols.otf
mkdir -p ~/.config/fontconfig/conf.d
fc-cache -f ~/.fonts
ln -sf $dotfiles_dir/resources/fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf

# Zsh as default shell
sudo chsh -s $(which zsh)

# Git config
git config --global user.name "Juraj Juričić"
git config --global user.email juraj.juricic@gmail.com
git config --global core.excludesfile '~/.gitignore_global'
git config --global alias.trikoder 'config user.email "juraj.juricic@trikoder.net"'

# ARC theme
# TODO
# https://unix.stackexchange.com/questions/39698/install-gnome-shell-theme-without-gnome-tweak-tool

# Solarized
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./set_dark.sh

