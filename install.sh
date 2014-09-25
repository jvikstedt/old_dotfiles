#!/bin/bash

if [ -f ~/.vimrc ];
then
  echo "vimrc already exists in home directory";
else
  ln -s ~/.vim/vimrc ~/.vimrc
fi

if grep -q "setxkbmap -option caps:escape" "../.profile";
then
  echo ".profile already contains escape fix"
else
  echo "setxkbmap -option caps:escape" >> ~/.profile
fi

if grep -q "source ~/.vim/bashrc" "../.bashrc";
then
  echo ".bashrc already contains source to vim bashrc"
else
  echo "source ~/.vim/bashrc" >> ~/.bashrc
fi

if grep -q "export TERM=xterm-256color" "../.bashrc";
then
  echo ".bashrc already contains export to 256 colors"
else
  echo "export TERM=xterm-256color" >> ~/.bashrc
fi

git config --global core.excludesfile ~/.vim/.gitignore_global

git submodule init
git submodule update
