#!/bin/bash

PKGS=(
  "rofi-bluetooth-git"
  "bluetuith"
  "kvantum-theme-libadwaita-git"
)

yes | LANG=C yay -S "${PKGS[@]}"
