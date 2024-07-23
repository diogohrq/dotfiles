#!/bin/bash

PKGS=(
  "lib32-mesa"
  "vulkan-radeon"
  "lib32-vulkan-radeon"
  "vulkan-icd-loader"
  "lib32-vulkan-icd-loader"
  "nvidia-open"
  "nvidia-settings"
  "nvidia-utils"
)

sudo pacman -S --needed --noconfirm "${PKGS[@]}"
