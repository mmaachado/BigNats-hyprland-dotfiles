#!/bin/bash
sleep 1
clear
echo
echo "---------- UPDATE SYSTEM ----------"
echo

aur_helper="yay"

$aur_helper

notify-send "Update complete"
echo 
echo "---------- UPDATE COMPLETE ----------"
echo 
echo "-------- press ENTER to exit --------"
read
