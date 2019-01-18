#!/bin/sh
. $HOME/.dmenurc
cat ~/.i3/config | grep '^bindsym \$mod' | cut -b9- | dmenu $DMENU_OPTIONS -l 20
