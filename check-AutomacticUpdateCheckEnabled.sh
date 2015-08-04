#!/bin/bash

# Name    : check-AutomacticUpdateCheckEnabled.sh
# Author  : Nick Smith
# Date    : 20150802
# Purpose : Checks if App Store updates are set to automatically check.

theOption=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled)
	
if [ "$theOption" == "1" ]
	then
theStatus="True"
	else
theStatus="False"

fi

echo "<result>$theStatus</result>"
