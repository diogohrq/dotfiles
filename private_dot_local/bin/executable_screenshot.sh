#!/bin/sh

case $1 in 
  region)
    grim -g "$(slurp)" - | wl-copy && wl-paste > $HOME/Pictures/screenshot-$(date +%F_%T).png
    dunstify "Screenshot of the region taken." -t 1000
    ;;
  screen)
    grim - | wl-copy && wl-paste > $HOME/Pictures/screenshot-$(date +%F_%T).png
    dunstify "Screenshot of the screen taken." -t 1000
    ;;
  *) exit 1 ;;
esac

