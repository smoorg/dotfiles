#!/bin/sh
source $HOME/.bash_params

if [ `tty` = /dev/tty1 ]; then
    startx
fi

source $HOME/.bash_aliases
