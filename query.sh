#/usr/bin/zsh

curl http://localhost:11434/api/generate -d "{
  \"model\": \"mistral\",
  \"prompt\": \"$1\",
  \"stream\": false
}" | jq -r '.response' > answer.txt
