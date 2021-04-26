[[ $- == *i* ]] && stty -ixon

if [[ -f $HOME/.bashrc ]]; then
    source $HOME/.bashrc
fi

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
