#!/bin/bash

# Get wsl-open
if [ ! -f bin/wsl-open ]
then
  curl -o bin/wsl-open https://raw.githubusercontent.com/4U6U57/wsl-open/master/wsl-open.sh
  chmod +x bin/wsl-open
fi

