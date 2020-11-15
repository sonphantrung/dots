if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep $(awk '/exec/ {print $2}' .xinitrc) || startx
fi
