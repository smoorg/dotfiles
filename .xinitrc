#!/bin/sh
export PATH=$PATH:$HOME/scripts
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export SCRIPTS_DIR=$HOME/scripts
export WALLPAPER_DIR=$HOME/.local/wallpaper/bg.png
export WALLPAPERS_DIR=$HOME/images/wallpapers/
export LOCKWALL_DIR=/usr/share/slick-greeter/background.jpg

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
xbindkeys=$HOME/.config/xbindkeys/config

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
[ -d "$SCRIPTS_DIR" ] && source $SCRIPTS_DIR

# external monitor
[ -x "$SCRIPTS_DIR/conmon" ] && $($SCRIPTS_DIR/conmon)

# statusbar
 while true; do content=$($SCRIPTS_DIR/stbar); xsetroot -name "$content"; sleep 1s; done &

# background

[ -f $WALLPAPER_DIR ] && $SCRIPTS_DIR/swapwall &

# notifications process
dunst > /dev/null 2>&1 &

# transparency
xcompmgr &

# screen rotator daemon
screenrotator &
#dwmblocks &
# window manager
# java param to work with webstorm 
_JAVA_AWT_WM_NONREPARENTING=1 dwm
