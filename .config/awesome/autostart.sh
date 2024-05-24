#!/bin/sh

run() {
  if ! pgrep "$1" ;
  then
    "$@"&
  fi
}

xsetroot -cursor_name left_ptr
#run "megasync"
#run "/usr/bin/dropbox"
#run "insync start"
run "picom"
#run "/usr/bin/redshift"
xrdb -merge ~/.config/X11/.Xresources
xset r rate "300" "50"
musicpd
run "mpdas"
#run "clipmenud"
#run "nm-applet"
