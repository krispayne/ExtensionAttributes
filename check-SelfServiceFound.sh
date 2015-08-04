#!/bin/bash

# Name    : check-SelfServiceFound.sh
# Author  : Nick Smith
# Date    : 20141029
# Purpose : Detects if Self Service app is installed.

# Begin script
if [ -e /Applications/Self\ Service.app ]
	then
isPresent="True"
	else
isPresent="False"

fi

echo "<result>$isPresent</result>"
