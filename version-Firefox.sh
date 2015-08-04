#!/bin/bash

# Name    : version-Firefox.sh
# Author  : Nick Smith
# Date    : 20150507
# Purpose : Detect the version of Firefox

# Begin script

if [ -e /Applications/Firefox.app ];
	then
theVersion=$( defaults read /Applications/Firefox.app/Contents/Info.plist CFBundleShortVersionString )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"
