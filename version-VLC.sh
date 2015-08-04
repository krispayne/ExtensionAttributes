#!/bin/bash

# Get VLC.app version info
if [ -e /Applications/VLC.app ]
	then
theVersion=$( defaults read /Applications/VLC.app/Contents/Info.plist CFBundleVersion )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"
