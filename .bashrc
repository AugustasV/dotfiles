#!bash

export EDITOR=vi
export VISUAL=vi
export PATH=$PATH:~/.local/go/bin
export GOBIN="$HOME/.local/bin"
# -------------------------------- gpg -------------------------------

export GPG_TTY=$(tty)

stty -ixon # disable tty flow so I could use ctrl + r, ctrl + s

unalias -a
alias '?'=duck
alias '??'=gpt
alias '???'=google
alias k=kubectl 



# for mac
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

owncomp=(
	pdf zet keg kn yt gl auth pomo config live iam sshkey ws x z clip
	./build build b ./k8sapp k8sapp ./setup ./cmd run ./run
	foo ./foo cmds ./cmds z bonzai openapi obs
)

for i in "${owncomp[@]}"; do complete -C "$i" "$i"; done

_have gh && . <(gh completion -s bash)
_have pandoc && . <(pandoc --bash-completion)
_have kubectl && . <(kubectl completion bash 2>/dev/null)
#_have clusterctl && . <(clusterctl completion bash)
_have k && complete -o default -F __start_kubectl k
_have kind && . <(kind completion bash)
_have helm && . <(helm completion bash)
_have minikube && . <(minikube completion bash)
_have conftest && . <(conftest completion bash)
_have mk && complete -o default -F __start_minikube mk
_have docker-compose && complete -F _docker_compose dc            # dc

