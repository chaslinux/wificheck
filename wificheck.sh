#!/bin/bash

BTVERSION=$(hciconfig -a | grep "LMP Version:" | cut -c 15- | cut -c -3)
sudo apt install rfkill -y

if sudo iw dev | grep -qi Interface; then
    echo "Wifi present"
else
    echo "No Wifi"
fi
if sudo rfkill list | grep -qi bluetooth; then
    echo "Bluetooth $BTVERSION"
else
    echo "No Bluetooth"
fi
