#!/bin/sh

picom --experimental-backends &
xwallpaper --zoom .local/share/bg/wall.jpg &
mpd &
clipmenud &
dwmblocks &
exec dwm
