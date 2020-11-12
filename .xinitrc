#!/bin/sh

picom &
xwallpaper --zoom .local/share/bg/wall.jpg &
mpd &
clipmenud &
dwmblocks &
exec dwm
