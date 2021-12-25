#!/bin/sh
source $HOME/.bash_params
source $HOME/.bash_aliases

source /usr/share/git/completion/git-completion.bash

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi


if [ `tty` = /dev/tty1 ]; then
    ssh-agent startx
fi

