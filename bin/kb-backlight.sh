#!/bin/bash
# Copyright (C) 2014 Nilson  Lopes <noslin005@gmail.com>

# kb-backlight.sh
# usage: kb-backlight.sh <up|down>
# Last Update: 22-08-2016

set -e

if [[ $UID -ne 0 ]]; then
    echo "Run this program as root"
    exit 1
fi

KB_PATH="/sys/devices/platform/applesmc.768/leds/smc::kbd_backlight"
cd $KB_PATH

function brightnessDown(){

    CUR=$(cat brightness)     

    CUR=$((CUR-10))

    if [[ $CUR -lt 0 ]]; then
        CUR=0
    fi

    echo $CUR |sudo tee brightness 2>/dev/null
}

function brightnessUp(){

    CUR=$(cat brightness)     

    CUR=$((CUR+10))

    if [[ $CUR -gt 255 ]]; then
        CUR=255
    fi

    echo $CUR | sudo tee brightness 2>/dev/null
}


case $1 in
    "up")
        brightnessUp
        ;;
    "down")
        brightnessDown
        ;;
    *)
        echo "Usage: $0 <up|down>"
        exit 1
        ;;
esac






