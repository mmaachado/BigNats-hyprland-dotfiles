#!/bin/bash
ssid=$(nmcli -t -f ssid dev wifi | sort -u | awk 'NR>1' | wofi -i --dmenu -c $HOME/.config/wofi/wifilistconfig)

nmcli dev wifi connect "$ssid" &>/dev/null

if [ $? -eq 0 ]; then
    exit 0
fi

# if connection failed:
psswd=$(zenity --password --title="Enter Wi-Fi Password")

# if cancel:
if [ -z "$psswd" ]; then
    exit 1
fi

# try to connect to the network with the password
nmcli dev wifi connect "$ssid" password "$psswd" &>/dev/null

# if success
if [ $? -eq 0 ]; then
    echo "Connected to $ssid."
else
    echo "Failed to connect to $ssid."
    exit 1
fi
