#!/bin/sh

function get_brightness {
  brightnessctl info | tail -3 | head -1 | grep -Eo "[0-9]{2,3}" | tail -1
}

function send_notification {
  brightness=$(get_brightness) 
  bar=$(seq -s "―" $(($brightness / 5)) | sed 's/[0-9]//g')

  dunstify -i preferences-system-brightness-lock -r 817 -t 1000 -u normal "   $bar"
}

case $1 in
  up)
    brightnessctl s 5%+
    send_notification
    ;;
  down)
    brightnessctl s 5%-
    send_notification
    ;;
  *) exit 1 ;;
esac
