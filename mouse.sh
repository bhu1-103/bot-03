#!/usr/bin/zsh

xdotool key super+2
xdotool mousemove 1300 1250
xdotool click --repeat 3 --delay 200 1
xdotool key ctrl+c
xdotool key super+1
xdotool type './query.sh "'
sleep 1
xdotool key super+2
xdotool key ctrl+shift+v
xdotool type '"'
xdotool key return
