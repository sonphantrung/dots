#!/bin/sh

picom --experimental-backends &
xwallpaper --zoom .local/share/bg/wall6.jpg &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
exec dwm
