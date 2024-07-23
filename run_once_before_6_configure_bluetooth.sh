#!/bin/bash

sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

sed -i "s/AutoEnable=true/AutoEnable=false/" /etc/bluetooth/main.conf
