#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

picom &
#slstatus &
nitrogen --restore &
#ibus-daemon -drx &
#run nm-applet &
#run xfce4-power-manager &
#run volumeicon &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &
