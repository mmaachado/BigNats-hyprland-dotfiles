#!/bin/bash

killall waybar
pkill waybar
sleep 0.1

waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css &
