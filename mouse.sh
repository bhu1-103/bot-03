#!/usr/bin/zsh

#get
xdotool key super+2
xdotool mousemove 1050 1250
xdotool click --repeat 3 --delay 200 1
xdotool key ctrl+c
xdotool key super+1
xdotool type './query.sh "reply asap: '
xdotool key ctrl+shift+v
xdotool type '"'
xdotool key return

#wait
while [[ ! -s answer.txt ]]; do
	sleep 1
done

#send
cat answer.txt | xclip -selection clipboard
xdotool key super+2
xdotool key ctrl+v
xdotool key return
