#!/bin/bash

# check and install fastfetch functionality
if [ -f /usr/bin/neofetch ]; then
        neofetch
else
        apt install neofetch
        neofetch
fi

# use cow say to greet user
if [ -f /usr/bin/figlet ]; then
        figlet "welcome, $(whoami)!"
else
        apt install figlet
        figlet "welcome $(whoami)!"
fi



