#!/bin/sh

picom &
xwallpaper --zoom .local/share/bg/wall.jpg &
dunst &
mpd &
dwmblocks &
exec dwm
