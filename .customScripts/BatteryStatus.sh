#!/bin/bash - 
currentStatus=`acpi -b | awk -F, '{print $1 " " $2}' | awk -F: '{print $2}'`
if [[ $currentStatus =~ "Discharging" ]]; then
   currentStatus=$(echo $currentStatus | sed 's/Discharging/ \{--\} /g')
else
   currentStatus=$(echo $currentStatus | sed 's/Charging/ \{++\}  /g')
fi

echo $currentStatus
