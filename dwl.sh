#!/bin/sh

export XDG_CURRENT_DESKTOP=dwl
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
# things to do when initializing
# dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
# systemctl --user stop pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
# systemctl --user start pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr

# supposed to run after wayland session is setted, hence sleep
post_dwl() {
	sleep 1s
	waybar &
	mako &
	cdrepo &
	[ -f "$WALLPAPER_FILE" ] && swaybg -i $WALLPAPER_FILE &
}

post_dwl &
dbus-run-session dwl > ~/.cache/dwltags &
