#!/bin/bash

# **************************************************************
# *██████╗ ██╗██╗   ██╗ ██████╗ ████████╗██████╗ ██╗           *
# *██╔══██╗██║██║   ██║██╔═══██╗╚══██╔══╝██╔══██╗██║           *
# *██████╔╝██║██║   ██║██║   ██║   ██║   ██████╔╝██║           *
# *██╔═══╝ ██║╚██╗ ██╔╝██║   ██║   ██║   ██╔═══╝ ██║           *
# *██║     ██║ ╚████╔╝ ╚██████╔╝   ██║   ██║     ██║           *
# *╚═╝     ╚═╝  ╚═══╝   ╚═════╝    ╚═╝   ╚═╝     ╚═╝ V 0.1     *
# **************************************************************
# Created by KeatonMayhem 2024

#Current location is altered for testing, and reboot is commented out - 8/28/2024 KM

#saveLocation="/boot/config.txt"
saveLocation="/home/$USER/config.txt"

# Prompt user for operation
    read -p "####################################################################
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

        cp config-0.txt $saveLocation

    elif [ "$operation" == "2" ]; then

        cp config-90.txt $saveLocation

    elif [ "$operation" == "3" ]; then

        cp config-180.txt $saveLocation

    elif [ "$operation" == "4" ]; then

        cp config-270.txt $saveLocation

    elif [ "$operation" == "5" ]; then

        cp config-hor.txt $saveLocation

    elif [ "$operation" == "6" ]; then

        cp config-ver.txt $saveLocation

    else
        echo "Invalid operation. Please enter '1', '2', '3', '4', '5', '6' or 'x'."
        clear
        exit
    fi

clear
echo "selection confirmed"
sleep 1
echo "rebooting system to take effect..."

#reboot
