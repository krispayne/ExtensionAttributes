#!/bin/bash

# Name    : version-SophosAV.sh
# Author  : Nick Smith
# Date    : 20130730
# Purpose : Detect the version of Sophos Antivirus

# Begin script
if [ -f /Applications/Sophos\ Anti-Virus.app/Contents/Info.plist ]
	then
theVersion=$( defaults read /Applications/Sophos\ Anti-Virus.app/Contents/Info.plist CFBundleShortVersionString )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"

# Version : 1.0
