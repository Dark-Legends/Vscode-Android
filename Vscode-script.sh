#!/bin/bash


R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
PU="\033[1;34m"
PI="\033[1;35m"
B="\033[1;36m"
W="\033[1;37m"
BL="\033[1;30m"
clear
for ((i=1; i<=5; i++))
do
echo
done

echo -e "\t${Y}Welcome ${W}To ${PI}VsCode ${BL}Setup ${W}On ${G}Android"
echo
echo -e "\033[1;36m"
echo -e "\t██╗   ██╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗"
echo -e "\t██║   ██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝"
echo -e "\t██║   ██║███████╗██║     ██║   ██║██║  ██║█████╗ "
echo -e "\t╚██╗ ██╔╝╚════██║██║     ██║   ██║██║  ██║██╔══╝ "
echo -e "\t ╚████╔╝ ███████║╚██████╗╚██████╔╝██████╔╝███████╗"
echo -e "\t  ╚═══╝  ╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝"
                                                  
echo
echo
echo -e "\t${R}Code ${W}By ${G}Manjuanth"
for ((i=1; i<=7; i++))
do
echo
done

echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] Updateing and Upgradeing"
echo
apt-get update && apt-get upgrade -y
echo
clear
echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] Installing Proot-distro"
echo
pkg install proot-distro -y
echo
clear
echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] Installing Ubuntu"
echo
proot-distro install ubuntu
echo
clear
echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] Now Login Ubuntu On Your Termux"
echo
proot-distro login ubuntu
echo
clear
echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] Updateing and Upgradeing"
echo
apt-get update && apt-get upgrade -y
echo -e "!Done..."
echo
clear
echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] Installing wget package"
echo
apt-get install wget -y
echo
clear


echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] Setuping And Downloading"
echo
wget https://github.com/coder/code-server/releases/download/v4.16.1/code-server-4.16.1-linux-arm64.tar.gz
echo
echo -e "\033[0m\033[38;5;46m [\033[1;37m\033[1;31m♥\033[0m\033[38;5;46m] starting To Access"
echo
apt-get install pv -y
echo
tar -xvf ./code-server-4.16.1-linux-arm64.tar.gz
cd code-server-4.16.1-linux-arm64
cd bin

clear
for ((i=1; i<=4; i++))
do
echo
done

rm -rf Vscode-script.sh

sleep 0.1


echo -e "\t${G}Now Exit Ubuntu And Termux Ok And Restart Ok"
echo
echo -e "${G}And Run Script ${G}./Vscode-server.sh"
echo
