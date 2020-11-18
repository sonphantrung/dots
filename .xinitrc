#!/bin/sh

picom --experimental-backends &
xwallpaper --zoom .local/share/bg/wall8.jpg &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
exec dwm
