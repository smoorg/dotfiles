#!/bin/sh

sourcefile() {
    [ -f $1 ] && source $1
}

sourcefile $HOME/.bash_params
sourcefile $HOME/.bash_params_dev
sourcefile $HOME/.bash_aliases

sourcefile /usr/share/git/completion/git-completion.bash
sourcefile /usr/share/bash-completion/bash_completion

if [ `tty` = /dev/tty1 ]; then
    ssh-agent startx
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
