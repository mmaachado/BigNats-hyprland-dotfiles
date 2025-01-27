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

if [[ $(_isInstalled "timeshift") == "0" ]] ;then                                        
    echo
    if gum confirm "DO YOU WANT TO CREATE A SNAPSHOT?" ;then
        echo
        c=$(gum input --placeholder "Enter a comment for the snapshot...")
        sudo timeshift --create --comments "$c"
        sudo timeshift --list
        sudo grub-mkconfig -o /boot/grub/grub.cfg
        echo ":: DONE. Snapshot $c created!"
        echo
    elif [ $? -eq 130 ]; then
        echo ":: Snapshot skipped."
        exit 130
    else
        echo ":: Snapshot skipped."
    fi
    echo
fi

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
