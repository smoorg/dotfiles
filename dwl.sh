#!/bin/sh

# supposed to run after wayland session is setted, hence sleep
post_dwl() {
	sleep 5s
	waybar &
	mako &
	[ -f "$WALLPAPER_FILE" ] && swaybg -i $WALLPAPER_FILE &
}

post_dwl &
dwl > ~/.cache/dwltags &
