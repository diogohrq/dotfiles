#!/bin/sh

chosen=$(printf "  Power Off\n  Reboot\n󰒲  Suspend\n󰋊  Hibernate\n  Log Out\n  Lock" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Reboot") reboot ;;
	"󰒲  Suspend") systemctl suspend ;;
	"󰋊  Hibernate") systemctl hibernate ;;
	"  Log Out") hyprctl dispatch exit ;;
	"  Lock") hyprlock ;;
	*) exit 1 ;;
esac
