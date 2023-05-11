. "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.local/bin/

[[ $- == *i* ]] && stty -ixon

if [[ -f $HOME/.bashrc ]]; then
    source $HOME/.bashrc
fi
