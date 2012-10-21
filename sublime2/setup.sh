#!/bin/sh
# Setup a machine for Sublime Text 2
set -x

# symlink settings in
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 2/Packages
mv "$sublime_dir/User" "$sublime_dir/User.backup"
ln -s "~/.dotfiles/sublime2/User" "$sublime_dir"
