#!/bin/bash

# Name    : version-Chrome.sh
# Author  : Nick Smith
# Date    : 20150107
# Purpose : Detect the version of Chrome.

# Begin script
if [ -e /Applications/Google\ Chrome.app ];
	then
theVersion=$( defaults read /Applications/Google\ Chrome.app/Contents/Info.plist CFBundleShortVersionString )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"
