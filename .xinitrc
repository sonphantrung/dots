#!/bin/sh

picom &
xwallpaper --zoom .local/share/bg/wall.jpg &
dunst &
mpd &
clipmenud &
dwmblocks &
exec dwm
