#!/bin/sh
# install script for my dotfiles
echo begin installation...
sudo apt-get update

# make link to dotfiles/.vimrc
if [ ~/.vimrc ]
then
  rm ~/.vimrc
fi
ln ./.vimrc ~/.vimrc

# install fish - apt-get install is idempotent so it is safe to run, even if already installed
sudo apt-get install fish

# install tldr
sudo apt-get install tldr

# install tmux
sudo apt-get install tmux

# add .fish dotfile
mkdir -p ~/.config/fish/conf.d
ln ./tmux.fish ~/.config/fish/conf.d/tmux.fish
