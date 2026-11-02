#!/usr/bin/env bash

active_id=$(xdotool getactivewindow 2>/dev/null || true)
printf -v active_hex '0x%08x' "${active_id:-0}"

declare -A seen

while read -r id desktop wm_class host title; do
    [[ -n "$id" ]] || continue

    case "${wm_class,,}" in
        *ghostty*|*kitty*|*alacritty*|*konsole*|*terminal*|*urxvt*|*xterm*)
            continue
            ;;
        *firefox*) icon="󰈹" ;;
        *spotify*) icon="" ;;
        *telegram*) icon="" ;;
        *code*|*vscode*) icon="󰨞" ;;
        *discord*) icon="" ;;
        *thunar*|*nautilus*|*dolphin*) icon="" ;;
        *obs*) icon="󰻃" ;;
        *steam*) icon="" ;;
        *) icon="󰣆" ;;
    esac

    seen["${wm_class,,}"]=1

    if [[ "$id" == "$active_hex" ]]; then
        color="${ACCENT:-#A08EAD}"
    else
        color="${FOREGROUND:-#B1A6BF}"
    fi

    printf '%%{A1:wmctrl -ia %s:}%%{F%s}%s%%{F-}%%{A} ' \
        "$id" "$color" "$icon"
done < <(wmctrl -lx)

# Steam может работать без окна, например в системном трее
if pgrep -x steam >/dev/null 2>&1 && [[ -z "${seen[steam.Steam]:-}" ]]; then
    printf '%%{A1:steam:}%%{F%s}%%{F-}%%{A} ' \
        "${MUTED:-#B1A6BF}"
fi
