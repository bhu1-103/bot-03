#!/usr/bin/zsh

#get
rm answer.txt
xdotool key super+2
xdotool mousemove 1100 1250
xdotool click --repeat 3 --delay 200 1
xdotool key ctrl+c
xdotool key super+1
xdotool type './query.sh "'
xdotool key ctrl+shift+v
xdotool type '"'
xdotool key return
cat answer.txt | xclip -selection clipboard

#wait
while [[ ! -s answer.txt ]]; do
	sleep 1
done

#send
xdotool key super+2
xdotool key ctrl+v
xdotool key return
