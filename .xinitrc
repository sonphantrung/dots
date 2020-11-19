#!/bin/sh

picom --experimental-backends &
setwallp &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
exec dwm
