#!/bin/bash

R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
PI="\033[1;35m"
B="\033[1;36m"
W="\033[1;37m"
BL="\033[1;30m"

clear
for ((i=1; i<=3; i++))
do
echo
done
echo
echo -e "\033[1;31m"

echo -e "\t██╗   ██╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗"
echo -e "\t██║   ██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝"
echo -e "\t██║   ██║███████╗██║     ██║   ██║██║  ██║█████╗"  
echo -e "\t╚██╗ ██╔╝╚════██║██║     ██║   ██║██║  ██║██╔══╝"  
echo -e "\t ╚████╔╝ ███████║╚██████╗╚██████╔╝██████╔╝███████╗"
echo -e "\t  ╚═══╝  ╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝"
echo
				echo -e "\t\t\t\t\t\t${G}Version 1.O"
for ((i=1; i<=2; i++))
do
echo
done                                                                   

echo
echo
echo -e "\t\t\t${BL}Code ${W}By ${B}Manjunath"
echo
echo

echo -e "\t${G}[ ${PI}1 ${G}] ${Y}Start Any Your Own Password For Vscode Server"
echo
echo -e "\t${G}[ ${PI}2 ${G}] ${Y}Stop Vscode Server"
echo
echo -e "\t${G}[ ${PI}3 ${G}] ${Y}Exit"
echo
echo -e "\t${G}[ ${PI}4 ${G}] ${Y}About Usage Tool"
echo
echo -e "\t${G}[ ${PI}5 ${G}] ${Y}Start Any Default Password for Vscode server"
echo -e "\033[1;32m"
for ((i=1; i<=5; i++))
do
  echo
done

read -p "Enter The Number To Use : " input

if [[ -z "$input" || ! "$input" =~ ^[0-9]+$ ]]; then
    echo -e "\t${R}Invalid : Please Enter a Valid Number."
    exit 1
fi

if [ $input -eq 1 ]; then
echo -e "\033[1;36m"
echo -e "Setting Up Vscode-Server" | pv -qL 20
  proot-distro login ubuntu
echo -e "\033[1;32m"
 read -p "Update Your Ubuntu (y/n) : " Now

 if [[ $Now == "y" || $Now == "Y" ]]; then
    for ((i=1; i<=5; i++))
    do
     echo
    done
 echo -e "\t ${G}Starting ${W}To ${Y}Update ${W}And ${Y}Upgrade Now" 
echo -e "\033[38;5;46m"
    apt-get update && apt-get upgrade -y
echo -e "\t!Done..."
  elif [[ $Now == "n" || $Now == "N" ]]; then
echo -e "\t${G}Starting The Server..."
  else
echo -e "\t ${R}Please ${G}Enter 'y' or 'n'."
  fi

 cd code-server-4.16.1-linux-arm64
 cd bin
echo -e "\t${R} Don't 'Forget' ${Y}Your ${G}Password😅😅"
 echo
  read -p "Enter Your Password : " Use
  export PASSWORD="$Use"
echo -e "${Y}Now You Can Open Your Browser And Type👇"
  echo
echo -e "\t${G}localhost:8080" | pv -qL 40
  echo
echo -e "${G}For Stop Vscode-Server Open New Terminal in Termux"
  sleep 1
  echo
echo -e "And Run The Script👀👇"
  echo
echo -e "\t${W}./Vscode-server.sh"
  ./code-server
elif [ $input -eq 2 ]; then
  clear
  for ((i=1; i<=10; i++))
  do
    echo
  done
echo -e "\tStopping Vscode-Server on Your Android" | pv -qL 10
pkill com.termux
elif [ $input -eq 3 ]; then
for ((i=1; i<=5; i++))
do
echo
done
echo -e "${G}Thank ${Y}You ${W}All"
echo
  exit
elif [ $input -eq 4 ]; then
clear
for ((i=1; i<=4; i++))
do
echo
done
termux-open-url https://github.com/Dark-Legends/Vscode-Android
echo -e "${G}Thank For You All"
elif [ $input -eq 5 ]; then
for ((i=1; i<=4; i++))
do
echo
done
echo -e "First setup and Install Requirements ok"
sleep 2
proot-distro login ubuntu
cd code-server-4.16.1-linux-arm64
cd bin
export PASSWORD="password"
./code-server

echo -e "${G}Now Open Brower And Type"
echo
echo -e "${W}localhost:8080"
fi
