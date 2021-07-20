#!/bin/sh
. ~/.profile
set -o emacs
export HISTFILE="$HOME/.cache/histfile"
export HISTSIZE=1000
export SAVEHIST=1000
export PS1='$(tput setaf 3)[$(tput setaf 6)\W$(tput setaf 3)]$(tput sgr0): '
. ~/.config/shellconfig/aliases
. ~/.config/shellconfig/gitalias

lfcd () {
    tmp="$(mktemp)"
    fid="$(mktemp)"
    lf-ueberzug -command '$printf $id > '"$fid"'' -last-dir-path="$tmp" "$@"
    id="$(cat "$fid")"
    archivemount_dir="/tmp/__lf_archivemount_$id"
    if [ -f "$archivemount_dir" ]; then
        cat "$archivemount_dir" | \
            while read -r line; do
                sudo umount "$line"
                rmdir "$line"
            done
        rm -f "$archivemount_dir"
    fi
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}
