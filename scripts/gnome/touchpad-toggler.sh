#!/bin/bash

key="org.gnome.desktop.peripherals.touchpad";
val="send-events";
curr="$key $val"

if [ "$(gsettings get $curr)" == "'enabled'" ]
then
 gsettings set $key $val disabled
else
 gsettings set $key $val enabled
fi