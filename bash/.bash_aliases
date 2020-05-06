# config files
alias alice="$EDITOR ~/dotfiles/bash/.bash_aliases"
alias bashenv="$EDITOR ~/dotfiles/bash/.bash_profile"
alias bashrc="$EDITOR ~/dotfiles/bash/.bashrc"
alias i3rc="$EDITOR ~/dotfiles/i3/.config/i3/config"
alias nvimrc="n$EDITOR ~/.config/nvim/init.vim"
alias sshrc="$EDITOR ~/.ssh/config"
alias termiterc="$EDITOR ~/dotfiles/termite/.config/termite/config"
alias xinitrc="$EDITOR ~/dotfiles/xinit/.xinitrc"
alias vimrc="$EDITOR ~/dotfiles/vim/.vimrc"
alias emacsrc="$EDITOR ~/dotfiles/emacs/.emacs.d/emacs.org"

# source
alias salice="source ~/dotfiles/bash/.bash_aliases"
alias sbashprofile="source ~/dotfiles/bash/.bash_profile"
alias sbashrc="source ~/dotfiles/bash/.bashrc"

# dtach
alias dta='dtach -A'

# find
alias fn='find -L -iname'
alias fr='find -L -regex'
alias fp="find -L -path"
alias fd='find -L -type d -iname'
alias countfiles="find -type f | wc -l"

# emacs
alias ec='emacsclient -n'
alias ce='emacsclient -n'
alias magit="emacsclient -n -e '(magit-status)'"

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

# date
alias week="date +%V"
alias cal="cal -wm"

# moving, copying
alias del="mv ~/.Trash/"
alias emptytrash="rm -r ~/.Trash/*"

#tar
alias tgz='tar -zxvf'

# redshift
alias day='redshift -x'
alias night='redshift -x; redshift -O 2800 -b 0.5'
alias dark='redshift -x; redshift -O 2000 -b 0.2'

# flexget
alias shows='flexget series list'

# subliminal
alias sub="subliminal download -l"

# pacman
alias update="sudo pacman -Syu"
alias upgrade="sudo pacman -Syu"
alias downgrade="sudo pacman -U"
alias pacins="sudo pacman -S"

# xrandr
alias screenup=" xrandr --output DP2 --mode 2560x1440 --right-of eDP1; xrandr --output HDMI1 --mode 2560x1440 --left-of eDP1"
alias screendwn="xrandr --output HDMI1 --off; xrandr --output DP2 --off"

# rename
alias rename="perl-rename"

# history
alias his=history
alias hisg='history | grep'

# copy/paste
alias xcopy="xsel -i -b"
alias xpaste="parcellite"

# tlp
alias fullcharge='sudo tlp fullcharge BAT0'
