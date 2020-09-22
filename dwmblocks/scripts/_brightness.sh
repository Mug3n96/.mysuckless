#!/usr/bin/bash

raw=$(xbacklight)" + 0.5" 

raw=$(echo $raw | bc)
new=""

for (( i=0; i<${#raw}; i++ )); do
  if [[ "${raw:$i:1}" == '.' ]]; then
    break
  else
    new=$new"${raw:$i:1}"
  fi
done

echo "[ " $new"% ]"
