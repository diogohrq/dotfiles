#!/bin/sh

function get_volume {
  pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

function get_mute {
  pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

function send_notification {
  volume=$(get_volume)
  is_mute=$(get_mute)
  bar=$(seq -s "―" $(($volume / 5)) | sed 's/[0-9]//g')

  if [ "$is_mute" == "yes" ]; then
    dunstify -i audio-volume-muted -r 2593 -t 1000 -u normal "   $bar"
  else
    dunstify -i audio-volume-high -r 2593 -t 1000 -u normal "   $bar"
  fi
} 


case $1 in
  up)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ --limit 1
    send_notification
    ;;
  down)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    send_notification
    ;;
  mute)
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    send_notification
    ;;
  *) exit 1 ;;
esac
