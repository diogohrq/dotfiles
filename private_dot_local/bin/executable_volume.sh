#!/bin/bash

opt=$1

case $opt in
  up) 
    wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+
    ;;
  down)
    wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-
    ;;
  mute)
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    ;;
  *)
    echo -n "unknown option"
    ;;
esac
