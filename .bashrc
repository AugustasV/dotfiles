#!bash

export EDITOR=vi
export VISUAL=vi
export PATH=$PATH:~/.local/go/bin
export GOBIN="$HOME/.local/bin"
# -------------------------------- gpg -------------------------------

export GPG_TTY=$(tty)

stty -ixon # disable tty flow so I could use ctrl + r, ctrl + s

source $HOME/.vimrc
source /etc/profile.d/bash_completion.sh

source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k

