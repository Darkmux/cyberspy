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
#             Installing dependencies
# ==============================================
function updating() {
    echo -e -n "Are you sure to uninstall CyberSpy? [Y/n]: "
    read -r confirm

    if [[ "${confirm}" == "y" || "${confirm}" == "Y" || "${confirm}" == "yes" || "${confirm}" == "YES" ]]; then
	echo -e ${red}"
[${green}*${red}] ${green}Uninstalling CyberSpy..."${white}
	mv ${etc}/bash.bashrc.backup ${etc}/bash.bashrc
	mv ${etc}/motd.backup ${etc}/motd
	rm -rf ~/.termux
	mkdir -p ~/.termux
	cp ${style}/.termux/termux.properties ~/.termux
# ==============================================
#             Deleting Executables
# ==============================================
        namesExec=$(ls ${settings}/spyexec)
        echo "${namesExec}" >> ${settings}/namesExec.txt
        numExec=$(cat ${settings}/namesExec.txt | wc -l)
        for (( i=1; i<=${numExec}; i++ ))
        do
            nameExec=$(awk "NR ==${i}" ${settings}/namesExec.txt)
            if [[ "${nameExec}" == "spy" ]]; then
                sleep 0.1
            else
                rm ${bin}/${nameExec}
            fi
        done
# ==============================================
#                 Deleting Tools
# ==============================================
        namesTool=$(ls ${settings}/exec)
        echo "${namesTool}" >> ${settings}/namesTool.txt
        numTool=$(cat ${settings}/namesTool.txt | wc -l)
        for (( i=1; i<=${numTool}; i++ ))
        do
            nameTool=$(awk "NR ==${i}" ${settings}/namesTool.txt)
            spy remove ${nameTool}
        done
# ==============================================
#               Deleting CyberSpy
# ==============================================
	rm -rf ${spy}
        rm ${bin}/spy
    elif [[ "${confirm}" == "n" || "${confirm}" == "N" || "${confirm}" == "not" || "${confirm}" == "NOT" ]]; then
	echo -e "Abort."
	exit
    else
	exit
    fi
}
# ==============================================
#              Declaring functions
# ==============================================
updating
# ==============================================
#    Created by: @Darkmux - WHITE HACKS ©2022
# ==============================================
