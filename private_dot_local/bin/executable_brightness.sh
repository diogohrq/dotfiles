#!/bin/bash

opt=$1

case $opt in
  up)
    brightnessctl set 5%+
    ;;
  down)
    brightnessctl set 5%-
    ;;
  *)
    echo -n "unknown option"
    ;;
esac
