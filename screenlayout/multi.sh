#!/bin/sh

setxkbmap -model pc105 -layout us -variant euro -option
setxkbmap -model pc105 -layout us -variant euro -option ctrl:nocaps
# xrandr --output HDMI1 --mode 1920x1080 --pos 1920x0 --rotate normal --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --mode 2560x1440 --pos 1920x0 --rotate normal --output VIRTUAL1 --off
