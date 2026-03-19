#!/bin/bash

if iw dev | grep -q Interface; then
    echo "Wifi present"
else
    echo "No Wifi"
fi
if rfkill list | grep -q bluetooth; then
    echo "Bluetooth present"
else
    echo "No Bluetooth"
fi
