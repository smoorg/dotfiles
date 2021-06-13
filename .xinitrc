#!/bin/sh
setxkbmap pl
# dirs

#source $HOME/.bashrc

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
xbindkeys=$XDG_CONFIG_HOME/xbindkeys/config

[ -f $sysresources ] 	&& xrdb -merge $sysresources
[ -f $sysmodmap ] 	&& xmodmap $sysmodmap
[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$usermodmap" ]	&& xmodmap "$usermodmap"
[ -f "$xbindkeys" ]	&& xbindkeys -f $xbindkeys

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# source scripts
#[ -d "$SCRIPTS_DIR" ] && source $SCRIPTS_DIR/**/*

# external monitor
[ -x $SCRIPTS_DIR/conmon ] && $SCRIPTS_DIR/conmon

# background
[ -f $WALLPAPER_DIR ] && [ -x $SCRIPTS_DIR/setwall ] && $SCRIPTS_DIR/setwall &

# notifications process
dunst > /dev/null 2>&1 &

# start bluetooth
bluetoothctl power on

# transparency
xcompmgr &

dwmblocks &

# window manager
#java param to work with webstorm 
export _JAVA_AWT_WM_NONREPARENTING=1
exec /usr/local/bin/dwm
