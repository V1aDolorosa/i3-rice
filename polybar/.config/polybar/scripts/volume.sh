#!/usr/bin/env bash

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null)

if [ -z "$VOLUME" ]; then
  printf '󰖁 N/A\n'
  exit 0
fi

PERCENT=$(echo "$VOLUME" | awk '{printf "%d", $2 * 100}')

if echo "$VOLUME" | grep -q MUTED; then
  ICON="󰝟"
else
  if [ "$PERCENT" -le 30 ]; then
    ICON="󰕿"
  elif [ "$PERCENT" -le 70 ]; then
    ICON="󰖀"
  else
    ICON="󰕾"
  fi
fi

printf '%s %s\n' "$ICON" "$PERCENT"
