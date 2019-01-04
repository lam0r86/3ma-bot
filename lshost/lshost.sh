#!/bin/sh
if [ $(dpkg-query -W -f='${Status}' nmap 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
		  apt-get -y install nmap;
  fi
#Get Actual IP adresses and ranges
iprange=`ip -o -f inet addr show | awk '/scope global/ {print $4}'`
#Scan with nmap
lshost=`nmap -sP $iprange`
printf "%-30s %s\n" "$lshost"
