#!/bin/sh
# install script for my dotfiles
echo begin installation...

# make link to dotfiles/.vimrc
if [ ~/.vimrc ]
then
  rm ~/.vimrc
fi
ln ./.vimrc ~/.vimrc

