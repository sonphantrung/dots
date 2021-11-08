#!/bin/sh

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &
picom --experimental-backends &
xrdb ~/.config/X11/.Xresources &
#xcompmgr &
unclutter &
dunst &
setwallp &
mpd &
clipmenud &
dwmblocks &
#slstatus &
#xsetroot -cursor_name left_ptr
# Caps lock sucks, disable it
xmodmap -e "keysym Caps_Lock = " &
xset r rate "300" "50" &
ssh-agent dwm
