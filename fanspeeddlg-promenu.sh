#!/bin/bash
mydir="'pwd'"
HEIGHT=18
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Amd settings for fan speed"
TITLE="Amd Gpu Fan Speed"
MENU="Please enter your choice:"

OPTIONS=(1 "Set 40"
	 2 "Set 60"
	 3 "Set 80"
	 4 "Set 100")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            sh -c 'echo mydir |./amdgpu-pro-fans.sh -s 40'
            ;;
	2)
            sh -c 'echo mydir |./amdgpu-pro-fans.sh -s 60'
            ;;
	3)
            sh -c 'echo mydir |./amdgpu-pro-fans.sh -s 80'
            ;;
	4)
            sh -c 'echo mydir |./amdgpu-pro-fans.sh -s 100'
            ;;

esac
