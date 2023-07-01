# Check if the shell is interactive before changing terminal settings
# stty -ixon disables XON/XOFF flow control to allow using Ctrl-s and
# Ctrl-q
[[ $- == *i* ]] && stty -ixon

export PATH="$PATH:$HOME/.local/bin"

if [ -f "$HOME/.ghcup/env" ]; then
    . "$HOME/.ghcup/env"
fi

if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

if [[ -f "$HOME/.bashrc" ]]; then
    source "$HOME/.bashrc"
fi
