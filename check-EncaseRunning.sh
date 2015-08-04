#!/bin/bash

# Name    : check-EncaseRunning.sh
# Author  : Nick Smith
# Date    : 20150729
# Purpose : Check to see if the EnCase Servlet is running on port 4445.


if lsof -Pi :4445 -sTCP:LISTEN -t >/dev/null
	then
theStatus="True"
	else
theStatus="False"

fi

echo "<result>$theStatus</result>"
