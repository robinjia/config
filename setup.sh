#!/bin/bash
set -eu -o pipefail
# Run all initial setup
# Run this from the home directory
dirname=`dirname "$0"`
cd $dirname
./pull-dependencies.sh
cd ..
ln -s config/vimrc .vimrc
ln -s config/vim .vim
ln -s config/inputrc .inputrc
ln -s config/tmux.conf .tmux.conf
echo "source $HOME/config/bashrc" >> ~/.bashrc
source ~/.bashrc
