#!/bin/sh
# dirs

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=$HOME/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

[ -f $sysresources ] 	&& xrdb -merge $sysresources
[ -f $sysmodmap ] 	&& xmodmap $sysmodmap
#[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$userresources" ] && xrdb -screen "$userresources"
[ -f "$usermodmap" ]	&& xmodmap "$usermodmap"
[ -f "$xbindkeys" ]	&& xbindkeys -f $xbindkeys

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# gpg
gpg-agent > /dev/null 2>&1 &

# notifications process
dunst > /dev/null 2>&1 &

# start bluetooth
bluetoothctl power on &

# transparency
xcompmgr &

# gtk theme support
xsettingsd &

# menu &
while true; do
    xsetroot -name "$($SCRIPTS_DIR/statusbar/statusbar)";
    sleep 5;
done  &

# window manager
#java param to work with webstorm 
#export _JAVA_AWT_WM_NONREPARENTING=1
# execute script dir + all following flags

setxkbmap pl

execute() {
    [ -x $1 ] && $@ &
}

# connect monitor, set wallpaper, set resolution
execute $SCRIPTS_DIR/screen/moncon
execute $SCRIPTS_DIR/screen/setwall
execute $SCRIPTS_DIR/screen/swapres eDP-1 2880x1920 120 0.5

# traverse repositories for cache in cdrepo alias
execute $SCRIPTS_DIR/git/repocd

# run dwm
[ -x $SCRIPTS_DIR/startdwm ] && startdwm || /usr/local/dwm
