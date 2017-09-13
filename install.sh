#!/bin/zsh
#===============================================================================
#
#            NOTES: For this to work this repository needs to be
#                   located in your home folder as ~/.dotfiles/
#
#===============================================================================

sudo apt-get -y install python3
sudo apt-get -y install zsh
sudo apt-get -y install vim-gnome
sudo apt-get -y install curl
sudo apt-get -y install python-pip
sudo apt-get -y install tmux
sudo apt-get -y install python-dev
sudo apt-get install dconf-cli

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symlink dotfiles
dotfiles_dir=~/.dotfiles

# Remove existing dotfiles
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -f ~/.vimrc > /dev/null 2>&1
sudo rm -f ~/.zshrc > /dev/null 2>&1

# Symlink
ln -sf $dotfiles_dir/dotfiles/.vim ~/.vim
ln -sf $dotfiles_dir/dotfiles/.vimrc ~/.vimrc
ln -sf $dotfiles_dir/dotfiles/.zshrc ~/.zshrc

# Fonts
mkdir -p ~/.fonts
ln -s $dotfiles_dir/resources/fonts/PowerlineSymbols.otf ~/.fonts/PowerlineSymbols.otf
mkdir -p ~/.config/fontconfig/conf.d
fc-cache -f ~/.fonts
ln -s $dotfiles_dir/resources/fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf

# Zsh as default shell
sudo chsh -s $(which zsh)

# Git name
git config --global user.name "Juraj Juričić"
git config --global user.email juraj.juricic@gmail.com

# Solarized
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./set_dark.sh

