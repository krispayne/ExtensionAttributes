#!/bin/bash

# Name    : remove-SSIDFromPreferredList.sh
# Author  : Jacob Salmela
# Date    : 20121126
# Purpose : Removes a SSID from the list of preferred networks

	
# Enter desired and undesired SSIDs here
undesiredNetwork="Undesired-SSID"

# Determine if the interface is called Wi-Fi or Airport
wifiOrAirport=$(/usr/sbin/networksetup -listallnetworkservices | grep -Ei '(Wi-Fi|AirPort)')

# Determine what the device interface number is
wirelessDevice=$(networksetup -listallhardwareports | awk "/$wifiOrAirport/,/Device/" | awk 'NR==2' | cut -d " " -f 2)
	
guestExists=$(/usr/sbin/networksetup -listpreferredwirelessnetworks "$wirelessDevice" | awk '"/$undesiredNetwork/" {print $1}')

function removeUndesiredNetwork() 
	{
	if [ -z "$guestExists" ];then
		echo "Guest network does NOT exist."
		exit 0
	else
		echo "Guest Network found."
		/usr/sbin/networksetup -removepreferredwirelessnetwork "$wirelessDevice" "$undesiredNetwork"
		echo "Removed."
	fi
	}

removeUndesiredNetwork

# Notes:
# Found @ https://jamfnation.jamfsoftware.com/discussion.html?id=5327
