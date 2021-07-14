#!/bin/sh

picom --experimental-backends &
unclutter &
setwallp &
mpd &
clipmenud &
dwmblocks &
xsetroot -cursor_name left_ptr
# Caps lock sucks, disable it
xmodmap -e "keysym Caps_Lock = "
exec dwm
