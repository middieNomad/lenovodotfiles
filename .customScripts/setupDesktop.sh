#!/bin/bash - 
#===============================================================================
#
#          FILE: setupDesktop.sh
# 
#         USAGE: ./setupDesktop.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: This sets up my desktop with customisations to :
#                 1. Cursor Speed of lenovo touchpad ElanTech
#                 2. Sets a random desktop using feh
#        AUTHOR: MidwayNomad (), midwaynomad@gmail.com
#  ORGANIZATION: KBPS
#       CREATED: 10/05/20 23:02
#      REVISION:  ---
#===============================================================================
/usr/bin/picom --config /home/midway/.config/picom.conf -b
# This worked before installing x86-synaptic*. I do not want to uninstall it because I dont want the touchpad to stop working randomly. Finally, the below ones are obselete now, thanks to the changes made to /etc/X11/x11.org.d/30-touchpad.conf
#/usr/bin/xinput --set-prop $(/usr/bin/xinput | /usr/bin/grep Elantech | /usr/bin/awk '{print $6}' | /usr/bin/awk -F= '{print $2}') $(/usr/bin/xinput list-props $(/usr/bin/xinput | /usr/bin/grep Elantech | /usr/bin/awk '{print $6}' | /usr/bin/awk -F= '{print $2}') | /usr/bin/grep 'libinput Accel Speed' | /usr/bin/grep -v 'Default' | /usr/bin/awk '{print $4}' | /usr/bin/sed 's/[():]//g') .65
#/usr/bin/xinput --set-prop $(/usr/bin/xinput | /usr/bin/grep Elantech | /usr/bin/awk '{print $6}' | /usr/bin/awk -F= '{print $2}') $(/usr/bin/xinput list-props $(/usr/bin/xinput | /usr/bin/grep Elantech | /usr/bin/awk '{print $6}' | /usr/bin/awk -F= '{print $2}') | /usr/bin/grep 'libinput Tapping Enabled' | /usr/bin/grep -v 'Default' | /usr/bin/awk '{print $4}' | /usr/bin/sed 's/[():]//g') 1

/usr/bin/feh --bg-scale $(/usr/bin/find /usr/share/backgrounds/ -type f | /usr/bin/sort -R | /usr/bin/head -n1)
/usr/bin/imwheel
# This is for the whole purpose of reseting the cursor. For some reason, the cursor set in the ~/.icon/default/theme.index or /usr/share/icons/default/theme.index is not being respected by X11. So, just start lxappearance and kill it soon after to set the values of cursor correctly.  Tried setting ~/.Xsession and calling xrdb in ~/.xinint. 
/usr/bin/lxappearance & 
/usr/bin/pkill lxappearance
