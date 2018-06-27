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
echo -e "${jeshile} │   Installing Nginx 1.7.8                     │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────┘ \e[0m"
echo " "
apt-get install -y build-essential libpcre3 libpcre3-dev libssl-dev unzip software-properties-common
mkdir /usr/build
wget http://nginx.org/download/nginx-1.7.8.tar.gz
wget https://github.com/arut/nginx-rtmp-module/archive/master.zip
tar -zxvf nginx-1.7.8.tar.gz
unzip master.zip
cd nginx-1.7.8
./configure --with-http_ssl_module --with-http_stub_status_module --with-http_secure_link_module --with-http_flv_module --with-http_mp4_module --add-module=../nginx-rtmp-module-master
make
make install
wget https://raw.github.com/JasonGiedymin/nginx-init-ubuntu/master/nginx -O /etc/init.d/nginx
chmod +x /etc/init.d/nginx
update-rc.d nginx defaults
service nginx start
service nginx stop
add-apt-repository -y ppa:mc3man/trusty-media
apt-get update
apt-get install -y ffmpeg
echo " "
echo -e "${jeshile} ┌────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Installation Completed Nginx 1.7.8           │ \e[0m"
echo -e "${jeshile} └────────────────────────────────────────────────┘ \e[0m"
echo " "