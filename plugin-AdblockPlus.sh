#!/bin/bash

# Name    : plugin-AdblockPlus.sh
# Author  : Nick Smith
# Date    : 20140808
# Purpose : Detect if Adblock Plus extension is installed for Firefox

# myVariables
currentUser=`ls -l /dev/console | cut -d " " -f 4`

# Begin Script
if [ -e /Users/$currentUser/Library/Application\ Support/Firefox/Profiles/*.default/adblockplus ]
	then
theStatus="True"
	else
theStatus="False"

fi

echo "<result>$theStatus</result>"

# Version : 1.0
# Version : 1.1 - Changed status message variable to be read by Casper
# Version : 1.2 - Changed how the script queries for who the logged in user is
#  
