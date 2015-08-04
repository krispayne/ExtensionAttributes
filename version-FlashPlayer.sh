#!/bin/bash

# Name    : version-FlashPlayer.sh
# Author  : Nick Smith
# Date    : 20140808
# Purpose : Detect the version of Flash Plater

# Begin script

if [ -f /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/Info.plist ]
	then
theVersion=$( defaults read /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/Info CFBundleShortVersionString )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"
