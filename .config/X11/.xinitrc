#!/bin/sh

xcompmgr &
unclutter &
setwallp &
mpd &
clipmenud &
slstatus -s | lemonbar -p -d -B "#55675a" -f "Hack Nerd Font:pixelsize=14" &
#tint2 &
# Caps lock sucks, disable it
xmodmap -e "keysym Caps_Lock = "
exec dwm
