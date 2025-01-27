#!/bin/bash
sleep 1
clear
echo
echo "---------- UPDATE SYSTEM ----------"
echo

_isInstalled() {
   package="$1";
	 check="$(yay -Qs --color always "${package}" | grep "local" | grep "${package} ")";

   if [ -n "${check}" ] ; then
       echo 0; #'0' means 'true' in Bash
       return; #true
   fi;
echo 1; #'1' means 'false' in Bash
return; #false
}

aur_helper="yay"

$aur_helper

if [[ $(_isInstalled "flatpak") == "0" ]] ;then
    flatpak upgrade
fi

notify-send "Update complete"
echo 
echo "---------- UPDATE COMPLETE ----------"
echo 
echo "-------- press ENTER to exit --------"
read
