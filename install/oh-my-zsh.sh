#!/bin/bash
dotfiles_dir=~/.dotfiles

#========================#
# Oh my ZSH installation #
#========================#

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Zsh as default shell
sudo chsh -s $(which zsh)

# Solarized
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./set_dark.sh

# Return to dotfiles install dir
cd $dotfiles_dir

