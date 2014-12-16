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

# Add config/matlab to Matlab path, for startup.m
export MATLABPATH=/home/robinjia/config/matlab:$MATLABPATH

# Source local bashrc changes
if [ -f ~/config/bashrc.local ]
then
  source ~/config/bashrc.local
fi

# Check disk usage of current directory, max depth 1
alias du1='du -h --max-depth=1 .'
