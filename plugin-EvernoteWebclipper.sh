#!/bin/sh  
  
# Name    : plugin-EvernoteWebclipper.sh
# Author  : Nick Smith
# Date    : 20140808
# Usage   : Detects if Evernote Webclipper extension is installed for Firefox

# MyVariables
currentUser=$(ls -l /dev/console | cut -d " " -f 4) 

# Begin Script
if [ -e /Users/$currentUser/Library/Application\ Support/Firefox/Profiles/*.default/evernote_webclipper.sqlite ] #1
	then
theStatus="True"
	else
theStatus="False"

fi

echo "<result>$theStatus</result>"

# Version : 1.0
# Version : 1.1 - Changed status message 
### Notes
# 1 - You have to remove quotes if an asterick is used because quoting it will disable the 
#     wildcard form of it and it will be treated litereally as part of the folder name.
