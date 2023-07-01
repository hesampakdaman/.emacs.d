#
# ~/.bashrc
#

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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    # alias dir='dir --color=auto'
    # alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# alias
if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# disable freeze C-s
[[ $- == *i* ]] && stty -ixon

if [ -f /usr/share/autojump/autojump.sh ]; then
    . /usr/share/autojump/autojump.sh
fi
if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then
    . /usr/share/doc/fzf/examples/key-bindings.bash
fi
