#!/bin/bash
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

if [ -n "$ZSH_VERSION" ]; then
  echo "zsh detected"
	echo "source $HOME/config/zshrc" >> ~/.zshrc
	source ~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
  echo "bash detected"
	echo "source $HOME/config/bashrc" >> ~/.bashrc
	source ~/.bashrc
else
  echo "Unrecognized shell"
fi

