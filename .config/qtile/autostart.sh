#!/bin/bash 
picom --config ~/.config/picom.conf &
nitrogen --restore &
run ibus-daemon &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
