#!/bin/sh

[ -f $HOME/.bash_aliases_priv ] && source $HOME/.bash_aliases_priv

#dotnet
alias dotnet-ef=$HOME/.dotnet/tools/dotnet-ef

alias tmux='tmux -2'
alias cdrepo='cd $(repocd)'

# print
alias lp2='lp -o sides=two-sided-long-edge'

# apps
alias vnc='remmina'
alias castget='castget -C ~/.config/castget/castget.conf'
alias news='newsboat'
alias burncd='asunder'

alias ll="ls -l --color"

# home git folder
alias dot='git -C ~/.dotfiles/ --work-tree=$HOME'

# docker stop all
alias dkill='docker stop $(docker ps -q)'

# git
source ~/.bash_aliases_git
source ~/.bash_aliases_tf
