#!/bin/bash

# Name    : remove-SSIDFromPreferredList.sh
# Author  : Jacob Salmela
# Date    : 20121126
# Purpose : Removes a SSID from the list of preferred networks
# Note    : Found @ https://jamfnation.jamfsoftware.com/discussion.html?id=5327

# Enter undesired SSIDs here
undesiredNetwork="Undesired-SSID"

# Determine if the interface is called Wi-Fi or Airport
wifiOrAirport=$(/usr/sbin/networksetup -listallnetworkservices | /usr/bin/grep -Ei '(Wi-Fi|AirPort)')

# Determine what the device interface number is
wirelessDevice=$(/usr/sbin/networksetup -listallhardwareports | /usr/bin/awk "/${wifiOrAirport}/,/Device/" | /usr/bin/awk 'NR==2' | /usr/bin/cut -d " " -f 2)

# Does the undesired SSID exist?
undesiredExists=$(/usr/sbin/networksetup -listpreferredwirelessnetworks "${wirelessDevice}" | /usr/bin/awk '"/${undesiredNetwork}/" {print $1}')

function removeUndesiredNetwork() 
	{
	if [ -z "${undesiredExists}" ];then
		echo "Undesired network does NOT exist."
		exit 0
	else
		echo "Undesired Network found."
		/usr/sbin/networksetup -removepreferredwirelessnetwork "${wirelessDevice}" "${undesiredNetwork}"
		echo "Removed."
	fi
	}

removeUndesiredNetwork
