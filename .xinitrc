#!/usr/bin/env bash


#xinitrc shit
[[ -d /etc/X11/xinit/xinitrc/d ]] && {
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [[ -x "$f" ]] && . "$f"
    done
    unset f
}

#wallpaper
nitrogen --restore &

#cursor
xsetroot -cursor_name left_ptr &

#time prior to sleep
xset dpms 1800 1800 1800
xset s off

#windows manager
exec bspwm


