#!/bin/sh

sourcefile() {
    [ -f $1 ] && source $1
}

sourcefile $HOME/.bash_params
sourcefile $HOME/.bash_params_dev
sourcefile $HOME/.bash_aliases
sourcefile $HOME/.cache/yay/rvm/rvm.sh

sourcefile /usr/share/git/completion/git-completion.bash
sourcefile /usr/share/bash-completion/bash_completion
sourcefile $XDG_CONFIG_HOME/.dart-cli-completion/bash-config.bash || true

if [ `tty` = /dev/tty1 ]; then
    ./dwl.sh
fi

