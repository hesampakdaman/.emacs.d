# config files
alias alice="$EDITOR ~/dotfiles/bash/.bash_aliases"
alias bashenv="$EDITOR ~/dotfiles/bash/.bash_profile"
alias bashrc="$EDITOR ~/dotfiles/bash/.bashrc"
alias sshrc="$EDITOR ~/.ssh/config"
alias termiterc="$EDITOR ~/dotfiles/termite/.config/termite/config"
alias xinitrc="$EDITOR ~/dotfiles/xinit/.xinitrc"
alias vimrc="$EDITOR ~/dotfiles/vim/.vimrc"
alias emacsrc="$EDITOR ~/dotfiles/emacs/.emacs.d/conf.org"

# source
alias salice="source ~/dotfiles/bash/.bash_aliases"
alias sbashprofile="source ~/dotfiles/bash/.bash_profile"
alias sbashrc="source ~/dotfiles/bash/.bashrc"

# emacs
alias e='emacsclient -nw'

# vim
alias vi="vim"
alias view="vim -R"
## permutations
alias vmi="vim"
alias ivm="vim"
alias imv="vim"
alias mvi="vim"
alias miv="vim"
# alias vim="nvim"

# ls
alias ls='ls --color=auto'
alias ll="ls -l --color=auto"
alias lla="ll -a --color=auto"

# python
alias pytest="pytest-3"
alias pycov="pytest-3 --cov"
alias black="find . -iname '*py' -exec black -l 120 '{}' +;"
alias isort="find . -iname '*py' -exec isort -l 120 -ns __init__.py '{}' +;"