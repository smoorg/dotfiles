#!/bin/sh
export TERM='xterm'
export LANG=pl_PL.UTF-8
export LC_ALL=pl_PL.UTF-8
export SUDO_ASKPASS='/usr/lib/ssh/x11-ssh-askpass'

if [ `tty` = /dev/tty1 ]; then
    startx
fi

source ~/.bash_aliases

# localization
alias sw='cd ~/repos/vsts/ShortWave'
alias ncr='cd ~/repos/ncr'
alias mydocs='cd ~/docs/private/mateusz'
alias gpush='git push -u origin "$(git rev-parse --abbrev-ref HEAD)"'


#dotnet
alias dotnet-ef=$HOME/.dotnet/tools/dotnet-ef
export MEDIA_DIR=/media

alias scancolor='scanimage -d pixma:MG5600_192.168.0.18 --resolution 150dpi --format=png --mode Color -p'
alias scangrey='scanimage -d pixma:MG5600_192.168.0.18 --resolution 150dpi --format=png --mode Gray -p'
alias ls='ls --color=auto -F'

# programs
alias vnc='tigervnc'
alias radio='vlc -I ncurses --no-color ~/.config/radio/radio.xspf'
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias pl="pactl list short sinks"
