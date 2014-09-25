#!/bin/bash

ln -s ~/.vim/vimrc ~/.vimrc

echo "source ~/.vim/bashrc" >> ~/.bashrc
echo "export TERM=xterm-256color" >> ~/.bashrc
echo "setxkbmap -option caps:escape" >> ~/.profile

git config --global core.excludesfile ~/.vim/.gitignore_global

git submodule init
git submodule update
