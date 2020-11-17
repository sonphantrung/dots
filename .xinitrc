#!/bin/sh

picom --experimental-backends &
xwallpaper --zoom .local/share/bg/wall.jpg &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
exec dwm
