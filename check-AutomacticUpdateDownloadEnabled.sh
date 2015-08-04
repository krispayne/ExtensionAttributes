#!/bin/bash

# Name    : check-AutomacticUpdateDownloadEnabled.sh
# Author  : Nick Smith
# Date    : 20150802
# Purpose : Checks if App Store updates are set to automatically download.

theOption=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload)
	
if [ "$theOption" == "1" ]
	then
theStatus="True"
	else
theStatus="False"

fi

echo "<result>$theStatus</result>"
