#
# ~/.bashrc
#

# env
EDITOR="emacsclient -nc"
VISUAL="emacsclient -nc"
SUDO_EDITOR="emacsclient -nc"

GREP_COLOR="1;31"
HISTFILE=~/.bash_history
LC_ALL=en_US.UTF-8
PATH=$PATH:$HOME/.local/bin/
TERM=screen-256color

dotfiles=$HOME/dotfiles

# simple prompt that goes well
# with TRAMP
PROMPT_DIRTRIM=2		# shorten dir in prompt
export PS1="[\t][\h][\w]$ "

# history
HISTFILE=~/.bash_history
HISTCONTROL=ignoreboth
HISTSIZE=9999
shopt -s histappend

# alias
if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bash_aliases
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

# disable freeze C-s
[[ $- == *i* ]] && stty -ixon
