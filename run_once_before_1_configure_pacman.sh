#!/bin/bash

# set ParallelDownloads to 15
sed -i "s/#ParallelDownloads = 5/ParallelDownloads = 15/" /etc/pacman.conf
# pacman animation
sed -i "/ParallelDownloads = 15/a ILoveCandy" /etc/pacman.conf
