#!/bin/sh
setxkbmap -model pc105 -layout us -variant colemak
setxkbmap -model pc105 -layout us -variant colemak -option ctrl:nocaps
xrandr --output HDMI1 --off --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
