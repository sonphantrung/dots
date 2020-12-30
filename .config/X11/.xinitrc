#!/bin/sh

xcompmgr &
unclutter &
setwallp &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
# Caps lock sucks, disable it
xmodmap -e "keysym Caps_Lock = "
exec dwm
