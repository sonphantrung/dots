#!/bin/sh

picom &
nitrogen --restore &
dunst &
mpd &
dwmblocks &
exec dwm
