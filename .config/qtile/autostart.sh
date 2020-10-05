#!/bin/bash 

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

picom --experimental-backends &
nitrogen --restore &
run ibus-daemon -drx &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
