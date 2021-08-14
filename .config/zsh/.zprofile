if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep $(awk '/ssh-agent/ {print $2}' /home/son/.config/X11/.xinitrc) || startx /home/son/.config/X11/.xinitrc
fi
