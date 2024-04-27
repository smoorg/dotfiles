#!/bin/sh

[ -f $HOME/.bash_aliases_priv ] && source $HOME/.bash_aliases_priv

#dotnet
alias dotnet-ef=$HOME/.dotnet/tools/dotnet-ef

alias tmux='tmux -2'
alias cdrepo='cd $(repocd)'

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

# add
alias gap='git add . --patch'

# fetch
alias gf='git fetch'
alias gfa='git fetch --all'

# push
alias gpl='git pull'
alias gplr='git pull --rebase'

# push
alias gp='git push -u origin "$(git branch --show-current)"'
alias gpf='git push -u origin "$(git branch --show-current)" --force-with-lease'

# branch
alias gbl='git branch -l'
alias gbd='git branch -D'
alias gb='git branch'

# checkout
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcp='git checkout -p'

# status
alias gs='git status'

# commit
alias gcm='git commit'
alias gcma='git commit --amend'
alias gcmane='git commit --amend --no-edit'

# rebase
alias gr='git rebase --commiter-date-is-author-date'
alias grc='git rebase --continue'
alias gra='git rebase --abort'

# reset
alias grp='git reset -p'

# log
alias grl='git reflog'
alias gl="git log --color --date=iso --format=fuller"

# diff
alias gd="git diff"
alias gds="git diff --staged"

# show all git aliases
alias gal='cat $HOME/.bash_aliases | grep "alias g"'

