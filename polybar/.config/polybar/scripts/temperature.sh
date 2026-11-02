#!/usr/bin/env bash
temp=$(sensors k10temp-pci-00c3 2>/dev/null | awk '/Tctl:/ {gsub(/[+°C]/, "", $2); print int($2); exit}')
if [[ -n "$temp" ]]; then
    printf "󰔏 %s°C\n" "$temp"
else
    printf "󰔏 N/A\n"
fi
