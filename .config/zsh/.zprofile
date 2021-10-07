if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx $HOME/.config/X11/.xinitrc
fi
