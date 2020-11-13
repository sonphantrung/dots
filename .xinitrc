#!/bin/sh

picom &
hsetroot -solid '#2e3440' &
mpd &
clipmenud &
dwmblocks &
exec dwm
