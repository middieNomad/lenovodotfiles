#!/bin/bash - 
#===============================================================================
#
#          FILE: WirelessStatus.sh
# 
#         USAGE: ./WirelessStatus.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: MidwayNomad (), 
#  ORGANIZATION: KBPS
#       CREATED: 10/12/20 02:37
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
awk 'NR==3 {print $3 "00%"}''' /proc/net/wireless

