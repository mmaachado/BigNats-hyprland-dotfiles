#!/bin/bash

swww img ~/wallpapers/rocket_launch.jpg --transition-type outer --transition-bezier 0.48,0.64,0.65,0.06 --transition-duration 1
cp ~/.config/hypr/conf/work_mode.conf ~/.config/hypr/conf/active_mode.conf
cp ~/.config/waybar/work_style.css ~/.config/waybar/style.css
source ~/.config/waybar/launch.sh
