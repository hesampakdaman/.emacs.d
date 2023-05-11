#
# ~/.bashrc
#

## env

### editor
export EDITOR="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"
export VISUAL="emacsclient -c"

### history
HISTCONTROL=ignoreboth
HISTFILE=~/.bash_history
HISTSIZE=9999
shopt -s histappend

# update window size after each line
shopt -s checkwinsize

### misc
TERM="xterm-256color"
GREP_COLOR="32"
LC_ALL=en_US.UTF-8
dotfiles=$HOME/dotfiles

# simple prompt that goes well with TRAMP
PROMPT_DIRTRIM=2
export PS1="\e[35;1m[\t][\h][\w]$ \e[m"

# alias
if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bash_aliases
fi

# disable freeze C-s
[[ $- == *i* ]] && stty -ixon
