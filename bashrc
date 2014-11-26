################################################################################
# Custom Additions to .bashrc
################################################################################
set -o vi
export EDITOR=/usr/bin/vim
alias ls='ls --color'

# Display git branch in terminal
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\u@\h:\w\$(parse_git_branch)\$ "

# RVM
source ~/.rvm/scripts/rvm

# cd to previous working directory when opening new tab in Terminal
# For Ubuntu 14.04.
. /etc/profile.d/vte.sh

# Add config/matlab to Matlab path, for startup.m
export MATLABPATH=/home/robinjia/config/matlab

# Silly things to make git more fun
alias such=git
alias very=git
alias much=git
alias so=git
alias wow='git status'

# Updates to PATH
PATH=/home/robinjia/bin:$PATH
