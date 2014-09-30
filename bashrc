################################################################################
# Custom Additions to .bashrc
################################################################################
set -o vi
alias ls='ls --color'

# Display git branch in terminal
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\u@\h:\w\$(parse_git_branch)\$ "

# Set PATH
# export PATH=$PATH:/usr/local/MATLAB/R2013b_Linux/bin

# RVM
source ~/.rvm/scripts/rvm

# cd to previous working directory when opening new tab in Terminal
# For Ubuntu 14.04.
. /etc/profile.d/vte.sh
