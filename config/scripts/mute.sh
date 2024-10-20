#!/bin/bash

# Comprobar el estado del canal 'Master'
status=$(amixer -c 1 get Master | grep '\[on\]')

if [ -n "$status" ]; then
  # Si está activado (unmuted), silenciarlo
  amixer -c 1 set Master mute
  echo "Sonido silenciado"
else
  # Si está silenciado (muted), desmutearlo
  amixer -c 1 set Master unmute
  amixer -c 1 set Speaker unmute
  echo "Sonido activado"
fi
