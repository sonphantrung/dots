if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep $(awk '/exec/ {print $2}' /home/son/.config/X11/.xinitrc) || startx /home/son/.config/X11/.xinitrc
fi
