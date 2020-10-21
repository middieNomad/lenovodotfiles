#!/bin/bash - 
#===============================================================================
#
#          FILE: CaptureScreen.sh
# 
#         USAGE: ./CaptureScreen.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: MidwayNomad (), midwaynomad@gmail.com
#  ORGANIZATION: KBPS
#       CREATED: 10/14/20 01:06
#      REVISION:  ---
#===============================================================================

# Only Allah and the legends who look after the scrot code know why it works only with sleep. Taken from this legend's git : https://github.com/isovector/tino/blob/master/tino-monad/src/Main.hs#L80-L81
/usr/bin/sleep 0.2
/usr/bin/scrot -s '/home/midway/Pictures/%Y-%m-%d_%H-%M-%S.png' -e '/usr/bin/xclip -selection c -t image/png <$f'
