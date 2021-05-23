#!/bin/sh
source $HOME/.bash_params
source $HOME/.bash_aliases

source /usr/share/git/completion/git-completion.bash

if [ `tty` = /dev/tty1 ]; then
    startx
fi

