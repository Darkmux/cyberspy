#!/bin/bash
#
# CyberSpy: Open Source
# License: General Public License
# System: GNU/linux
# Date: 22-04-2022
#
# Facebook: https://www.facebook.com/whitehacks00
# TikTok: https://tiktok.com/@whitehacks00
# Telegram: https://t.me/whitehacks00
# GitHub: https://github.com/Darkmux
#
# This tool was created in honor of @thelinuxchoice.
#
# ==============================================
#                   Variables
# ==============================================
operatingSystem=$(uname -o)
deviceArchitecture=$(uname -m)
showPath=$(pwd)
showDay=$(date +"%d")
showMonth=$(date +"%m")
showYear=$(date +"%Y")
spy="/data/data/com.termux/files/home/cyberspy"
settings="/data/data/com.termux/files/home/cyberspy/settings"
style="/data/data/com.termux/files/home/cyberspy/settings/style"
execute="/data/data/com.termux/files/home/cyberspy/settings/exec"
intools="/data/data/com.termux/files/home/cyberspy/settings/intools"
rmtools="/data/data/com.termux/files/home/cyberspy/settings/rmtools"
home="/data/data/com.termux/files/home"
usr="/data/data/com.termux/files/usr"
etc="/data/data/com.termux/files/usr/etc"
bin="/data/data/com.termux/files/usr/bin"
opt="/data/data/com.termux/files/usr/opt"
share="/data/data/com.termux/files/usr/share"
# ==============================================
#                  Light colors
# ==============================================
black="\e[1;30m"
blue="\e[1;34m"
green="\e[1;32m"
cyan="\e[1;36m"
red="\e[1;31m"
purple="\e[1;35m"
yellow="\e[1;33m"
white="\e[1;37m"
# ==============================================
#                  Dark colors
# ==============================================
blackDark="\e[0;30m"
blueDark="\e[0;34m"
greenDark="\e[0;32m"
cyanDark="\e[0;36m"
redDark="\e[0;31m"
purpleDark="\e[0;35m"
yellowDark="\e[0;33m"
whiteDark="\e[0;37m"
# ==============================================
#               Background colors
# ==============================================
blackBack=$(setterm -background black)
blueBack=$(setterm -background blue)
greenBack=$(setterm -background green)
cyanBack=$(setterm -background cyan)
redBack=$(setterm -background red)
yellowBack=$(setterm -background yellow)
whiteBack=$(setterm -background white)
# ==============================================
#             Installing Tool
# ==============================================
function installing() {
    if [ ! -x ${bin}/magmaosint ]; then
	echo -e ${red}"
[${green}*${red}] ${green}Installing magmaosint..."${white}
        yes|pkg update && pkg upgrade
        yes|pkg install python
        yes|pkg install wget
        python3 -m pip install --upgrade pip
        python3 -m pip install fuzzywuzzy
        python3 -m pip install requests
        wget https://raw.githubusercontent.com/Darkmux/phoenix-packages/main/tools/MagmaOsint.zip -O ${settings}/lctools/MagmaOsint.zip
	cd ${settings}/lctools
	unzip MagmaOsint.zip
	mv MagmaOsint ${opt}
        rm -rf MagmaOsint.zip
        cd ${opt}/MagmaOsint
	python3 -m pip install -r requirements.txt
        cp ${execute}/magmaosint ${bin}
        chmod 777 ${bin}/magmaosint
        echo -e ${red}"
[${green}√${red}] ${green}Installation Finished, Please Execute:${white}

magmaosint

"
    else
	echo -e ${red}"
[${green}*${red}] ${green}Already Installed"${white}
    fi
}
# ==============================================
#              Declaring functions
# ==============================================
installing
# ==============================================
#    Created by: @Darkmux - WHITE HACKS ©2022
# ==============================================
