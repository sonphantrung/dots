#!/bin/sh

picom --experimental-backends &
unclutter &
setwallp &
mpd &
clipmenud &
#dwmstatusgen &
#tint2 &
exec startxfce4
