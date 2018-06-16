#!/bin/bash
echo " "
jeshile='\e[40;38;5;82m' #jeshile
jo='\e[0m' # pa ngjyra
os=$(exec uname -m|grep 64)
if [ "$os" = "" ]
then os="x86"
else os="x64"
fi
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Checking System Version  │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Detected $os System     │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌──────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Installing Wowza Media Server 3.0.5        │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   By Pedro Junior Tutoriais                  │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────┘ \e[0m"
echo " "
apt-get update && apt-get install sun_java7-jre
wget http://www.wowza.com/downloads/WowzaMediaServer-3.0.5/WowzaMediaServer-3.0.5.deb.bin
Chmod-x WowzaMediaServer-3.0.5.deb.bin
./WowzaMediaServer-3.0.5.deb.bin
cd /usr/local/WowzaMediaServer-3.0.5/conf/ && nano admin.password
#cd /usr/local/WowzaMediaServer-3.0.5/examples/ && ./installall.sh
echo " "
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Wowza Media Server 3.0.5                               │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Installation Completed                                 │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   By Pedro Junior Tutoriais                              │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo " "
cd /usr/local/WowzaMediaServer-3.0.5/bin/ && ./startup.sh