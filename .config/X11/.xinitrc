#!/bin/sh

picom --experimental-backends &
#xcompmgr &
unclutter &
dunst &
setwallp
mpd &
clipmenud &
#dwmblocks &
slstatus &
xsetroot -cursor_name left_ptr
# Caps lock sucks, disable it
xmodmap -e "keysym Caps_Lock = "
xset r rate "300" "50"
while :; do
        ssh-agent dwm
done
