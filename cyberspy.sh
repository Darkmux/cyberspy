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
function installing() {
    echo -e ${red}"
[${green}*${red}] ${green}Installing dependencies..."${white}
    yes|pkg update && pkg upgrade
    yes|pkg install git
    yes|pkg install curl
    yes|pkg install wget
    yes|pkg install fish
    yes|pkg install ruby
    gem install lolcat
    yes|pkg install openssl-tool
    yes|pkg install termux-tools
}
# ==============================================
#          Setting the Termux Style
# ==============================================
function style() {
    chmod 777 *.sh
    rm -rf ~/.termux > /dev/null 2>&1
    cp -r ${style}/.termux ~
    grep chsh ${etc}/bash.bashrc >/dev/null 2>/dev/null || { sed -i '12a chsh -s fish' ${etc}/bash.bashrc;} #Set shell fish as main shell
    cat <<- CONF > ~/.bashrc
grep chsh ${etc}/bash.bashrc >/dev/null 2>/dev/null || { sed -i '12a chsh -s fish' ${etc}/bash.bashrc;}
[[ -e ${etc}/fish/config.fish ]] && { rm ${etc}/fish/config.fish;}
ln -s ${settings}/config/config.fish ${etc}/fish/config.fish 2>/dev/null #Symbolic link at modified main fish config file
CONF
    mv ${etc}/motd ${etc}/motd.backup > /dev/null 2>&1
    [[ -e ${etc}/fish/config.fish ]] && { rm -rf ${etc}/fish/config.fish;}
    ln -s ${settings}/config/config.fish ${etc}/fish/config.fish #Symbolic link at modified main fish config file 
    if [ ! -d ${opt} ]; then
	mkdir -p ${opt}
    fi
    cd ${execute}
    chmod 777 *
    cd ${intools}
    chmod 777 *
    cd ${rmtools}
    chmod 777 *
    cd ${settings}/spyexec
    chmod 777 *
    cd ${spy}
    cp ${settings}/spyexec/* ${bin}
    chmod 777 ${bin}/spy
    echo -e ${red}"
[${green}√${red}] ${green}Installation Finished, Please Execute:${white}

omf install bobthefish
omf install separation
omf theme bobthefish
"${white}
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
}
# ==============================================
#              Declaring functions
# ==============================================
installing
style
# ==============================================
#    Created by: @Darkmux - WHITE HACKS ©2022
# ==============================================
