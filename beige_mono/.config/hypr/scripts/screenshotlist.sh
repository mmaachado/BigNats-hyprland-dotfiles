#!/bin/bash

op=$( echo -e "Fullscreen\nSelection\nCancel" | wofi -i --dmenu -c $HOME/.config/wofi/screenshotconfig | awk '{print tolower($1)}' )

mode="screen"
waittime=0

if [[ "$op" != "cancel" ]]; then
  case $op in 
    fullscreen)
      waittime=0.3
      mode="screen"
      ;;
    selection)
      mode="area"
      ;;
  esac
  exec $HOME/.config/hypr/scripts/screenshotlist_aux.sh $mode $waittime
fi
