#!/bin/bash
dotfiles_dir=~/.dotfiles

#=========#
# Symlink #
#=========#

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

# Create .zshrc.local if it doesn't exist - it is sourced in .zshrc
touch ~/.zshrc.local

# Fonts
mkdir -p ~/.fonts
ln -sf $dotfiles_dir/resources/fonts/PowerlineSymbols.otf ~/.fonts/PowerlineSymbols.otf
mkdir -p ~/.config/fontconfig/conf.d
fc-cache -f ~/.fonts
ln -sf $dotfiles_dir/resources/fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf
