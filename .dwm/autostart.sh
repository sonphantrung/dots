#!/bin/bash

picom --experimental-backends &
slstatus &
nitrogen --restore &
ibus-daemon -drx &
nm-applet &
xfce4-power-manager &
volumeicon &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
