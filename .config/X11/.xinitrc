#!/bin/sh

picom --experimental-backends &
unclutter &
setwallp &
mpd &
clipmenud &
slstatus -s | lemonbar -p -d -B "#282a2e" -f "Hack Nerd Font:pixelsize=14" &
xsetroot -cursor_name left_ptr
# Caps lock sucks, disable it
xmodmap -e "keysym Caps_Lock = "
exec xmonad
