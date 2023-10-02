#!bash

export EDITOR=vi
export VISUAL=vi
export PATH=$PATH:~/.local/go/bin
export GOBIN="$HOME/.local/bin"
# -------------------------------- gpg -------------------------------

export GPG_TTY=$(tty)

stty -ixon # disable tty flow so I could use ctrl + r, ctrl + s

alias k=kubectl 

source $HOME/.vimrc
source /etc/profile.d/bash_completion.sh

