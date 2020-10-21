#!/bin/bash - 
#===============================================================================
#
#          FILE: 1.sh
# 
#         USAGE: ./1.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: MidwayNomad (), 
#  ORGANIZATION: KBPS
#       CREATED: 10/13/20 02:10
#      REVISION:  ---
#===============================================================================


currentVol=`amixer get Master | awk '/Mono.+/ {print $6=="[off]"?$6:$4}' | sed 's/%\]//g' | sed 's/\[//g'`

volume=$currentVol/10
numberofBars=`echo $volume | bc`
#echo $numberofBars

for ((count=1;count<=numberofBars;count++))
do
   echo -n ":"
done
for ((count=numberofBars;count<10;count++))
do
   echo -n "."
done
