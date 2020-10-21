#!/usr/bin/bash
/usr/bin/ps -ef | /usr/bin/grep $(/usr/bin/ps -ef | /usr/bin/grep xmonad | /usr/bin/grep -v grep | /usr/bin/awk '{print $2}') | /usr/bin/awk '{print $2}' | /usr/bin/sort -r | /usr/bin/xargs kill -SIGTERM
