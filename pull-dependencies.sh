#!/bin/bash

# Set up julia vim
if [ ! -d julia-vim ]
then
  git clone git://github.com/JuliaLang/julia-vim.git
fi
for dir in autoload doc ftdetect ftplugin indent syntax
do
  mkdir -p vim/${dir}
  cd vim/${dir}
  ln -s ../../julia-vim/${dir}/* .
  cd ../..
done
