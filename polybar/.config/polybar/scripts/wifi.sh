#!/usr/bin/env bash

SSID=$(nmcli -t -f IN-USE,SSID device wifi | awk -F: '$1 == "*" {print $2; exit}')

if [ -n "$SSID" ]; then
  printf '󰖩 %s\n' "$SSID"
else
  printf '󰖩 Нет подключения\n'
fi
