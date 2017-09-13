#!/bin/zsh
#===============================================================================
#
#            NOTES: For this to work this repository needs to be
#                   located in your home folder as ~/.dotfiles/
#
#===============================================================================

dotfiles_dir=~/.dotfiles


# Remove existing dotfiles
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -f ~/.vimrc > /dev/null 2>&1
sudo rm -f ~/.zshrc > /dev/null 2>&1

# Symlink
ln -sf $dotfiles_dir/dotfiles/.vim ~/.vim
ln -sf $dotfiles_dir/dotfiles/.vimrc ~/.vimrc
ln -sf $dotfiles_dir/dotfiles/.zshrc ~/.zshrc

# Zsh as default shell
sudo chsh -s $(which zsh)

