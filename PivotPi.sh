#!/bin/bash

saveLocation="/boot/firmware/config.txt"

# Prompt user for operation
    read -p "####################################################################

# **************************************************************
# *██████╗ ██╗██╗   ██╗ ██████╗ ████████╗██████╗ ██╗           *
# *██╔══██╗██║██║   ██║██╔═══██╗╚══██╔══╝██╔══██╗██║           *
# *██████╔╝██║██║   ██║██║   ██║   ██║   ██████╔╝██║           *
# *██╔═══╝ ██║╚██╗ ██╔╝██║   ██║   ██║   ██╔═══╝ ██║           *
# *██║     ██║ ╚████╔╝ ╚██████╔╝   ██║   ██║     ██║           *
# *╚═╝     ╚═╝  ╚═══╝   ╚═════╝    ╚═╝   ╚═╝     ╚═╝ V 0.1     *
# **************************************************************
# Created by KeatonMayhem 2024

Do you want to:
(1) 0° Orientation
(2) 90° Orientation
(3) 180° Orientation
(4) 270° Orientation
(5) Horizontal Flip
(6) Vertical Flip
(x) exit
####################################################################
" operation


if [ "$operation" == "x" ]; then
        clear
        exit
    elif [ "$operation" == "1" ]; then

        cp configs/config-0.txt $saveLocation

    elif [ "$operation" == "2" ]; then

        cp configs/config-90.txt $saveLocation

    elif [ "$operation" == "3" ]; then

        cp configs/config-180.txt $saveLocation

    elif [ "$operation" == "4" ]; then

        cp configs/config-270.txt $saveLocation

    elif [ "$operation" == "5" ]; then

        cp configs/config-horz.txt $saveLocation

    elif [ "$operation" == "6" ]; then

        cp configs/config-ver.txt $saveLocation

    else
        echo "Invalid operation. Please enter '1', '2', '3', '4', '5', '6' or 'x'."
        clear
        exit
    fi

clear
echo "selection confirmed"
sleep 1
echo "rebooting system to take effect..."

reboot
