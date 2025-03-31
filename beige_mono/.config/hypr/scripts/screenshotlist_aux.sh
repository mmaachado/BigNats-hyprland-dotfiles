#!/bin/bash

op=$( echo -e "Copy to clipboard\nSave to file\nBoth (copy and save)\nEdit" | wofi -i --dmenu -c $HOME/.config/wofi/screenshotconfig | awk '{print tolower($1)}' )

savemethod="copy"
path="$HOME/Pictures/Screenshots/"
filedate=$(date +"%G-%m-%d_%H-%M-%S")
prefix="screenshot_"
suffix=".png"
filename=$path$prefix$filedate$suffix

case $op in 
  copy)
    savemethod="copy"
    ;;
  save)
    touch $filename
    savemethod="save"
    ;;
  both)
    touch $filename
    savemethod="copysave"
    ;;
  edit)
    touch $filename
    savemethod="edit"
    ;;
esac

sleep $2
grimblast --notify $savemethod $1 $filename
play $HOME/.config/hypr/scripts/screenshot-sound.mp3
