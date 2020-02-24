#!/bin/sh


#--------------------------------------------------------------------
# script to download a web page
# Author: Francis Louis
# Created Date: 23-02-2020
# Modified Date: 23-02-2020
# script name: webdownload.sh
#--------------------------------------------------------------------

echo "started downloading the web page"

echo 'first argument: ' $1
echo 'second argument: ' $2

if [ "$1" = "" ]; then
  echo "first command line argument is empty"
  exit 1
fi


if [ "$2" = "" ]; then
  echo "second command line argument is empty"
  exit 1
fi
echo "continuing"

links = "$(wget -q $1 -O - | grep -o -E 'href="([^"#]+)"'|grep $1)"
echo "${links}"
#wget -r $1 -x -O /tmp/download/wget.log
