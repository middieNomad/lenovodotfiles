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
#       CREATED: 10/13/20 03:41
#      REVISION:  ---
#===============================================================================

options=("Yes" No)
choice=$(printf "%s\n" "${options[@]}" | dmenu)
[ $? = 0 ] || exit

case $choice in
    "Yes")
       xmonad --recompile && xmonad --restart
        ;;
    No)
       echo "No"
        ;;
esac


