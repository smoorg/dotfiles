#!/bin/sh

waybar &
exec river -c "$XDG_CONFIG_HOME/river/init"
