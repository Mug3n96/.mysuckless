#!/usr/bin/bash

muted_icon=婢
not_muted_icon=墳

state=$(pacmd list-sinks | grep muted)

if [[ $state == *"muted: no" ]]; then
  icon=$not_muted_icon
else
  icon=$muted_icon
fi

echo '[' $icon $(amixer get Master |grep % |awk '{print $5}'|sed 's/[^0-9\%]//g') ']'
