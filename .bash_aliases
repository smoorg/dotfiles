#!/bin/sh

alias gpush='git push -u origin "$(git rev-parse --abbrev-ref HEAD)"'
alias gbl='git branch -l'
alias gbd='git branch -D'
alias gc='git checkout'
alias gl="git log --color --date=iso --pretty=format:'%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%aN %s'"

