#!/bin/bash
dotfiles_dir=~/.dotfiles

#===============#
# Dconf storage #
#===============#

# To dump, use (example):
# dconf dump /org/gnome/shell/extensions/system-monitor/ > dconf/system-monitor.conf

cat $dotfiles_dir/dconf/* | dconf load /


# Enable gnome shell extensions
gnome-shell-extension-tool -e system-monitor@paradoxxx.zero.gmail.com

