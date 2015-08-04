#!/bin/bash 

# Name	  : version-MsOffice2011.sh
# Author  : Nick Smith
# Date    : 20141028
# Purpose : Detect the version of Microsoft Office 2011

# This will display the version of Microsoft Office 2011
if [ -f /Applications/Microsoft\ Office\ 2011/Office/MicrosoftComponentPlugin.framework/Versions/14/Resources/Info.plist ]
	then
theVersion=$( defaults read /Applications/Microsoft\ Office\ 2011/Office/MicrosoftComponentPlugin.framework/Versions/14/Resources/Info CFBundleShortVersionString )
	else
theVersion="False"

fi

echo "<result>$theVersion</result>"
