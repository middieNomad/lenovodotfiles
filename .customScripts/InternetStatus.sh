#!/bin/bash - 
#===============================================================================
#
#          FILE: InternetStatus.sh
# 
#         USAGE: ./InternetStatus.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: MidwayNomad (), midwaynomad@gmail.com
#  ORGANIZATION: KBPS
#       CREATED: 10/12/20 20:40
#      REVISION:  ---
#===============================================================================

url="www.google.com"
/usr/bin/ping -c1 -q $url >>/dev/null 2>&1
if [ "$?" -ne "0" ] ; then
   echo "Net Down";
else
   echo "Net Up";
fi
