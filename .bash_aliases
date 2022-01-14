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

source $HOME/.bash_aliases_git
source $HOME/.bash_aliases_priv
