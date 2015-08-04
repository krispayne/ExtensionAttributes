#!/bin/bash

# Name    : check-SMARTStatus.sh
# Author  : Nick Smith
# Date    : 20130726
# Purpose : Report boot drives SMART status.

theSmart=`diskutil info disk0 | grep SMART | awk '{print $3}'`

if [ "$theSmart" != "Verified" ]
	then
theStatus="Failing"
	else
theStatus="Working"

fi

echo "<result>$theStatus</result>"
