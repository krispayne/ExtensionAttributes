#!/bin/bash

# Name    : version-Evernote.sh
# Author  : Nick Smith
# Date    : 20150727
# Purpose : Detect the version of Evernote installed.

# Begin script

if [ -f /Applications/Evernote.app/Contents/Info.plist ]
	then
theVersion=$( defaults read /Applications/Evernote.app/Contents/Info.plist CFBundleShortVersionString )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"
