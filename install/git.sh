#!/bin/bash
dotfiles_dir=~/.dotfiles

#============#
# Git config #
#============#

git config --global user.name "Juraj Juričić"
git config --global user.email juraj.juricic@gmail.com
git config --global core.excludesfile '~/.gitignore_global'
git config --global alias.trikoder 'config user.email "juraj.juricic@trikoder.net"'
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

