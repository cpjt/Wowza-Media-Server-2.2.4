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
echo -e "${jeshile} │   Installing Wowza Media Server 2.2.4        │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   By Pedro Junior Tutoriais                  │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────┘ \e[0m"
echo " "
apt-get update && apt-get install openjdk*
wget http://www.wowza.com/downloads/WowzaMediaServer-2-2-4/WowzaMediaServer-2.2.4.deb.bin
chmod +x WowzaMediaServer-2.2.4.deb.bin
./WowzaMediaServer-2.2.4.deb.bin
cd /usr/local/WowzaMediaServer
apt-get update && apt-get install screen && chmod +x bin/startup.sh && screen -dmS wowza ./startup.sh && screen -r wowza
cd /usr/local/WowzaMediaServer/conf
nano admin.password
cd /usr/local/WowzaMediaServer/conf
nano VHost.xml
cd /usr/local/WowzaMediaServer/examples
./installall.sh
echo " "
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Wowza Media Server 2.2.4                               │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Installation Completed                                 │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   By Pedro Junior Tutoriais                              │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo " "
cd /usr/local/WowzaMediaServer/bin
./startup.sh