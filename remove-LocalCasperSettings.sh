#!/bin/bash

# Name    : remove-LocalCasperSettings.sh
# Author  : Nick Smith
# Date    : 20131105
# Purpose : Remove all Casper mamagement files/associatoins.

# Remove MCX prefs from a profile/machine
dscl . -list Computers | grep -v "^localhost$" | while read computer_name ; do sudo dscl . -delete Computers/"$computer_name" ; done
theUser=`ls -la /dev/console | cut -d " " -f 4`
dscl . -delete /Users/$ME MCXSettings
dscl . -delete /Users/$ME MCXFlags
dscl . -delete /Users/$ME cached_groups
dscl . -delete /Users/$ME dsAttrTypeStandard:MCXSettings
rm -fr /private/var/db/dslocal/nodes/Default/computers/localhost.plist

#remove Jamf Framework
/usr/sbin/jamf removeFramework

#remove selfservice
rm -rf "/Applications/Self\ Service.app"
rm /Users/"$theUser"/Library/Preferences/com.jamfsoftware.*
