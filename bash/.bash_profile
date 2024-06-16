export PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/go/bin" ] && export PATH="$HOME/go/bin:$PATH"
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Check if the shell is interactive before changing terminal settings
# stty -ixon disables XON/XOFF flow control to allow using Ctrl-s and Ctrl-q
[[ $- == *i* ]] && stty -ixon
