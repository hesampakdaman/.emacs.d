#
# ~/.bashrc
#

## env

### editor
EDITOR="emacsclient -nc"
SUDO_EDITOR="emacsclient -nc"
VISUAL="emacsclient -nc"

### history
HISTCONTROL=ignoreboth
HISTFILE=~/.bash_history
HISTSIZE=9999
shopt -s histappend

### misc
TERM="xterm-256color"
GREP_COLOR="32"
LC_ALL=en_US.UTF-8
PATH=$PATH:$HOME/.local/bin/
dotfiles=$HOME/dotfiles

# simple prompt that goes well with TRAMP
PROMPT_DIRTRIM=2
export PS1="\e[35;1m[\t][\h][\w]$ \e[m"

# alias
if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bash_aliases
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

# disable freeze C-s
[[ $- == *i* ]] && stty -ixon
