#!/bin/sh
lshost=`nmap -sP 192.168.11.0/24 `
printf "%-30s %s\n" "$lshost"
