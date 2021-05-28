#!/bin/sh

xcompmgr &
unclutter &
setwallp &
mpd &
clipmenud &
dwmblocks &
#tint2 &
# Caps lock sucks, disable it
xmodmap -e "keysym Caps_Lock = "
exec dwm
