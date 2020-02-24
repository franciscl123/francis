#!/bin/sh


#--------------------------------------------------------------------
# script to block connections for a number of IPs for certain time
# Author: Francis Louis
# Created Date: 23-02-2020
# Modified Date: 23-02-2020
# script name: blockconnections.sh
#--------------------------------------------------------------------

if [ $# -lt 2 ]
then
   echo "Usage: blockconnections.sh filename duration"
   exit 1
fi

filename="$1"
timetoblock="$2" 
while read -r line; do
   ipaddress="$line"
   echo "IP Address read from file - $ipaddress"
   iptables -A INPUT -s $ipaddress -m time --utc --datestart  --datestop -j DROP 
done < "$filename"
