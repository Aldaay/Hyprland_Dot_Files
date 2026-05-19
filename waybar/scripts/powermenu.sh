#!/bin/sh

# Power menu script using tofi

CHOSEN=$(printf "\n\n\n" | rofi -dmenu -i -theme powermenu-2)

case "$CHOSEN" in
	"") hyprlock ;;
	#"Suspend") systemctl suspend-then-hibernate ;;
	"") poweroff ;;
	"") reboot ;;
	"") hyprctl dispatch exit ;;
	*) exit 1 ;;
esac
