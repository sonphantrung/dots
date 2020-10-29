#!/bin/sh

picom &
nitrogen --restore &
dwmblocks &
exec dwm
