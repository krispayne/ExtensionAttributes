#!/bin/bash

# Name    : check-AutomacticUpdateData&SecEnabled.sh
# Author  : Nick Smith
# Date    : 20150802
# Purpose : Checks if App Store updates (Data & Security) are set to automatically install.

theOption=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist ConfigDataInstall)
	
if [ "$theOption" == "1" ]
	then
theStatus="True"
	else
theStatus="False"

fi

echo "<result>$theStatus</result>"
