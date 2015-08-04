#!/bin/bash

# Name    : show-UpTime.sh
# Author  : Nick Smith
# Date    : 20141012
# Purpose : Show the machines uptime.

# Begin script
theNum=$(uptime | awk '{ print $3 }')
theDays=$(uptime | awk '{ print $4 }' | sed 's/,//g')

echo "<result>$theNum $theDays</result>"
