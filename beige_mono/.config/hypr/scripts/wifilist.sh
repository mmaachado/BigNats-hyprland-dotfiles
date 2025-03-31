#!/bin/bash
wifi=$(nmcli -t -f ssid dev wifi | sort -u | awk 'NR>1' | wofi -i --dmenu -c $HOME/.config/wofi/wifilistconfig)
echo $wifi
nmcli dev wifi connect "$wifi" --ask
