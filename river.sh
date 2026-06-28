#!/bin/sh
mako &
exec river -c "$XDG_CONFIG_HOME/river/init"
