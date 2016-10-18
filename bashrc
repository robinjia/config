################################################################################
# Custom Additions to .bashrc
################################################################################
set -o vi
export EDITOR=/usr/bin/vim
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Display git branch in terminal
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\u@\h:\w\$(parse_git_branch)\$ "

# Add config/matlab to Matlab path, for startup.m
export MATLABPATH=/home/robinjia/config/matlab:$MATLABPATH

# Check if a local/bin/ directory exists in home directory, add to $PATH.
if [ -d ~/local/bin ]
then
  PATH=~/bin:$PATH
fi

# Add the config/bin directory to PATH
export PATH=~/config/bin:$PATH

# Check if a local/py directory exists in home directory, add to $PYTHONPATH
if [ -d ~/local/py ]
then
  export PYTHONPATH=$PYTHONPATH:~/local/py
fi

# Check disk usage of current directory, max depth 1
alias du1='du -h --max-depth=1 . | sort -k1h'

# Aliases related to PBS/qsub
alias qst='qstat -u $USER'
alias qdelall='qstat -u $USER | grep "$USER" | cut -d "." -f1 | xargs qdel'

# Aliases related to codalab
function clw () {
  ws=$(cat cl_worksheet.txt)
  cl work "$ws"
}

# Source local bashrc changes
if [ -f ~/config/bashrc.local ]
then
  source ~/config/bashrc.local
fi

