#!/bin/sh

picom --experimental-backends &
unclutter &
setwallp &
emacs --daemon &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
exec dwm
