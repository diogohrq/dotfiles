#!/bin/bash

sudo pacman -S --noconfirm --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay -Y --gendb
