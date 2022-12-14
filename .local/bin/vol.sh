#!/bin/sh

volstat="$(pactl list sinks)"
# volstat="$(amixer get Master)" # ALSA only equivalent.

# echo "$volstat" | grep -q "Mute: yes" && printf "🔇\\n" && exit
echo "$volstat" | grep -q "Mute: yes" && printf "Muted \\n" && exit

vol="$(echo "$volstat" | grep '[0-9]\+%' | sed "s,.* \([0-9]\+\)%.*,\1,;1q")"

icon=""

 if [ "$vol" -gt "70" ]; then
 	icon=""
 elif [ "$vol" -lt "30" ]; then
 	icon=""
 else
 	icon=""
 fi

printf "%s %s%%\\n" "$icon" "$vol"
