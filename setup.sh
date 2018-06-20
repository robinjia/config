#!/bin/bash
# Run all initial setup
# Run this from the home directory
cd config
./pull-dependencies.sh
cd ..
ln -s config/vimrc .vimrc
ln -s config/vim .vim
ln -s config/inputrc .inputrc
echo "source $HOME/config/bashrc" >> ~/.bashrc
