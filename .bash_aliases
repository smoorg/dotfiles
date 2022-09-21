#!/bin/sh

#dotnet
alias dotnet-ef=$HOME/.dotnet/tools/dotnet-ef

#tmux - force 256 colors mode
alias tmux='tmux -2'

# programs
alias vnc='remmina'

alias castget='castget -C ~/.config/castget/castget.conf'
alias news='newsboat ; pkill -RTMIN+10 dwmblocks'

alias xlog='less $HOME/.local/share/xorg/Xorg.0.log'
alias xlog1='less $HOME/.local/share/xorg/Xorg.1.log'

source $HOME/.bash_aliases_priv

# git
alias gap='git add . --patch'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gp='git push -u origin "$(git branch --show-current)"'
alias gpf='git push -u origin "$(git branch --show-current)" -f'
alias gbl='git branch -l'
alias gbd='git branch -D'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gcm='git commit'
alias gcma='git commit --amend'
alias gcmane='git commit --amend --no-edit'
alias gl="git log --color --date=iso --pretty=format:'%ad%x08%at%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%aN %s'"

alias gal='cat $HOME/.bash_aliases | grep "alias g"'
