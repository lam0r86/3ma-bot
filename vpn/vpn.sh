#!/bin/sh
if [ $1 = "list" ] ; then
pivpn $1 | sed 's/\x1b\[[0-9;]*m//g'  > /tmp/vpnecho
sed -i '1,6d' /tmp/vpnecho
#echo $vpnecho
vpnecho=`cat /tmp/vpnecho`
echo "*VPN´s Listed below*"
printf "%s %s %s\n" $vpnecho
fi
if [ $1 = "clients" ] ; then
pivpn $1 | sed 's/\x1b\[[0-9;]*m//g'  > /tmp/vpnecho
sed -i '1,7d' /tmp/vpnecho
#echo $vpnecho
vpnecho=`cat /tmp/vpnecho`
echo "*VPN´s Connectionlist below*"
echo -n $vpnecho
fi
if [ $1 = "add" ] && [ $# -ge 1 ] ; then
vpnecho=`pivpn $1 -n $2 -p $3 | sed 's/\x1b\[[0-9;]*m//g'`
echo -n $vpnecho
fi
if [ $1 = "revoke" ] && [ $# -ge 1 ] ; then
vpnecho=`pivpn $1 $2 | sed 's/\x1b\[[0-9;]*m//g'`
echo -n $vpnecho
fi
