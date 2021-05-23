#!/bin/sh

# git
alias gp='git push -u origin "$(git branch --show-current)"'
alias gbl='git branch -l'
alias gbd='git branch -D'
alias gc='git checkout'
alias gs='git status'
alias gcm='git checkout -m $1'
alias gcb='git checkout -b $1'
alias gl="git log --color --date=iso --pretty=format:'%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%aN %s'"

#dotnet
alias dotnet-ef=$HOME/.dotnet/tools/dotnet-ef

# programs
alias vnc='tigervnc'
alias radio='vlc -I ncurses --no-color ~/.config/radio/radio.xspf'
alias pl="pactl list short sinks"

alias castget='castget -C ~/.config/castget/castget.conf'
alias news='newsboat ; pkill -RTMIN+10 dwmblocks'

source $HOME/.bash_aliases_priv
