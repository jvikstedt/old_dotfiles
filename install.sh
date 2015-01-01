#!/bin/bash

if [ -f ~/.vimrc ];
then
  echo "vimrc already exists in home directory";
else
  ln -s ~/.vim/vimrc ~/.vimrc
fi

if [ -f ~/.tmux.conf ];
then
  echo "tmux.conf already exists in home dir";
else
  ln -s ~/.vim/tmux.conf ~/.tmux.conf
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

git config --global core.excludesfile ~/.vim/.gitignore_global

git submodule init
git submodule update

sudo apt-get install silversearcher-ag
sudo apt-get install exuberant-ctags
sudo apt-get install tmux
