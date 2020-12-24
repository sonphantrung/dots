#!/bin/sh

xcompmgr &
unclutter &
setwallp &
mpd &
clipmenud &
dwmstatusgen &
#tint2 &
exec dwm
