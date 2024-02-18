if [[ "$(tty)" = "/dev/ttyv0" ]]; then
	pgrep dwm || startx $HOME/.config/X11/.xinitrc
fi
