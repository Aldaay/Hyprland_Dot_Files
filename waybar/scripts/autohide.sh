#!/bin/bash

wbar=true
sleep 1
while true; do
    read Y < <( hyprctl cursorpos -j | sed -n '4p' | cut -d":" -f2)
    if [ "$Y" -eq 0 ] &&  [ "$wbar" = false ]; then
        #pkill -SIGUSR2 waybar
        #exec waybar
        echo "$wbar"
        wbar=true
        killall -SIGUSR1 waybar
    elif [ "$Y" -gt 0 ] &&  [ "$wbar" = true ]; then
        killall -SIGUSR1 waybar
        wbar=false
    fi
    echo  "$Y"
done
#if [ "$a" -eq 25 ]; then
#    sleep 1
#    echo  "$Y"
#fi

sleep 1
#kill $$
#exec /home/alday/Downloads/HarmonyMusic.AppImage
#exec waybar
