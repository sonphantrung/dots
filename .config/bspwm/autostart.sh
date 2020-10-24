#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
i3status | lemonbar -p -B "#68674B" &
nitrogen --restore &
picom &
