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
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\]\$ "

# Add config/matlab to Matlab path, for startup.m
#export MATLABPATH=/home/robinjia/config/matlab:$MATLABPATH

# Check if a local/bin/ directory exists in home directory, add to $PATH.
if [ -d ~/bin ]
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

# Theano
export OMP_NUM_THREADS=2

# xterm-256 colors
export TERM=xterm-256color

# Slurm
alias sme='squeue -u robinjia -S P,i'

# Dumb nvm stuff (see https://github.com/nvm-sh/nvm/issues/1978)
export NVM_DIR="$HOME/.nvm"
function _install_nvm() {
  unset -f nvm npm node
  # Set up "nvm" could use "--no-use" to defer setup, but we are here to use it
  . "$NVM_DIR/nvm.sh" # This sets up nvm
  . "$NVM_DIR/bash_completion"  # nvm bash_completion
  "$@"
}

function nvm() {
    _install_nvm nvm "$@"
}

function npm() {
    _install_nvm npm "$@"
}

function node() {
    _install_nvm node "$@"
}

# Source local bashrc changes
if [ -f ~/config/bashrc.local ]
then
  source ~/config/bashrc.local
fi

