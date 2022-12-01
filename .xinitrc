#!/bin/sh
setxkbmap pl
# dirs

#source $HOME/.bashrc

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

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

# external monitor
[ -x $SCRIPTS_DIR/screen/conmon ] && $SCRIPTS_DIR/screen/conmon

# background
[ -f $WALLPAPER_DIR ] && [ -x $SCRIPTS_DIR/screen/setwall ] && $SCRIPTS_DIR/screen/setwall

# notifications process
dunst > /dev/null 2>&1 &

# start bluetooth
bluetoothctl power on &

# transparency
xcompmgr &

# menu &
while true; do 
    xsetroot -name "$($SCRIPTS_DIR/statusbar/statusbar)";
    sleep 1;
done  &

# window manager
#java param to work with webstorm 
export _JAVA_AWT_WM_NONREPARENTING=1

[ -x $SCRIPTS_DIR/startdwm ] && $SCRIPTS_DIR/startdwm || /usr/local/bin/dwm
