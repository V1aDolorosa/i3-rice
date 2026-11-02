#!/usr/bin/env bash

AQUA="#7AA89F"
GRAY="#727169"

if ! bluetoothctl show | grep -q 'Powered: yes'; then
  printf "%%{F%s}󰂲 Bluetooth%%{F-}\n" "$GRAY"
  exit 0
fi

DEVICE=$(bluetoothctl devices Connected | head -n 1 | cut -d ' ' -f 3-)

if [ -n "$DEVICE" ]; then
  printf "%%{F%s}󰂯%%{F-} %%{F%s}%s%%{F-}\n" "$AQUA" "$AQUA" "$DEVICE"
else
  printf "%%{F%s}󰂯 Bluetooth%%{F-}\n" "$GRAY"
fi
