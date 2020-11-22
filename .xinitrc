#!/bin/sh

xsetroot -cursor_name left_ptr &
picom --experimental-backends &
setwallp &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
exec dwm
