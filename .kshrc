#!/bin/sh
. ~/.profile
set -o emacs
export HISTFILE="~/.cache/histfile"
export HISTSIZE=1000
export SAVEHIST=1000
export PS1='$(tput setaf 3)\w$(tput sgr0) $(tput setaf 6)\$$(tput sgr0) '
. ~/.config/shellconfig/*
