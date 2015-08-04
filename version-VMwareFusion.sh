#!/bin/bash

# Name    : version-VMwareFusion.sh
# Author  : Nick Smith
# Date    : 20150625
# Purpose : Detects the version of VMware Fusion


# Begin script

if [ -f /Applications/VMware\ Fusion.app/Contents/Info.plist ]
	then
theVersion=$( defaults read /Applications/VMware\ Fusion.app/Contents/Info.plist CFBundleShortVersionString )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"
