source ~/.config/zsh/.zshenv

if [[ "$(tty)" = "/dev/ttyv0" ]]; then
	pgrep dwm || startx $HOME/.config/X11/.xinitrc
	#pgrep dwl || dwl -s "swaybg -i ~/.local/share/the-best-wallpaper.png"
	#pgrep wayfire || wayfire
fi
