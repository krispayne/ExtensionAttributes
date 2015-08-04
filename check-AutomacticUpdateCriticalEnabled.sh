#!/bin/bash

# Name    : check-AutomacticUpdateCriticalEnabled.sh
# Author  : Nick Smith
# Date    : 20150802
# Purpose : Checks if App Store updates (Critical Updates) are set to automatically install.

theOption=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall)
	
if [ "$theOption" == "1" ]
	then
theStatus="True"
	else
theStatus="False"

fi

echo "<result>$theStatus</result>"
