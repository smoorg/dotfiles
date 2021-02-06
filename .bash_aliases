#!/bin/sh

alias gpush='git push -u origin "$(git rev-parse --abbrev-ref HEAD)"'
alias gp='git push -u origin "$(git branch --show-current)"'
alias gbl='git branch -l'
alias gbd='git branch -D'
alias gc='git checkout'
alias gl="git log --color --date=iso --pretty=format:'%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%aN %s'"

# localization
alias sw='cd ~/repos/vsts/ShortWave'
alias ncr='cd ~/repos/ncr'
alias mydocs='cd ~/docs/private/mateusz'
alias gpush='git push -u origin "$(git rev-parse --abbrev-ref HEAD)"'


#dotnet
alias dotnet-ef=$HOME/.dotnet/tools/dotnet-ef

#printer
alias scancolor='scanimage -d pixma:MG5600_192.168.0.18 --resolution 150dpi --format=png --mode Color -p'
alias scangrey='scanimage -d pixma:MG5600_192.168.0.18 --resolution 150dpi --format=png --mode Gray -p'
alias ls='ls --color=auto -F'

# programs
alias vnc='tigervnc'
alias radio='vlc -I ncurses --no-color ~/.config/radio/radio.xspf'
alias pl="pactl list short sinks"

alias castget='castget -C ~/.config/castget/castget.conf'
alias podcasts='castget -vrpn'
