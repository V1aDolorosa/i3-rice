#!/usr/bin/env bash

CHOICE=$(printf "  Выключить\n󰜉  Перезагрузить\n󰍃  Выйти из i3" |
  rofi -dmenu -i -p "Power" -config ~/.config/rofi/config.rasi)

case "$CHOICE" in
*Выключить*)
  CONFIRM=$(printf "Нет\nДа" | rofi -dmenu -i -p "Выключить компьютер?" -config ~/.config/rofi/config.rasi)
  [ "$CONFIRM" = "Да" ] && systemctl poweroff
  ;;
*Перезагрузить*)
  CONFIRM=$(printf "Нет\nДа" | rofi -dmenu -i -p "Перезагрузить компьютер?" -config ~/.config/rofi/config.rasi)
  [ "$CONFIRM" = "Да" ] && systemctl reboot
  ;;
*Выйти*)
  CONFIRM=$(printf "Нет\nДа" | rofi -dmenu -i -p "Выйти из i3?" k-config ~/.config/rofi/config.rasi)
  [ "$CONFIRM" = "Да" ] && i3-msg exit
  ;;
esac
