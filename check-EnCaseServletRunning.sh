#!/bin/bash

# Name    : check-EncaseRunning.sh
# Author  : Nick Smith
# Date    : 20140729
# Purpose : Check to see the EnCase Servlet is running on port 4445 as it should. MUST be run as root.

# Begin script
if lsof -Pi :4445 -sTCP:LISTEN -t >/dev/null
	then
	theStatus="True"
else
	theStatus="False"
fi

echo "<result>$theStatus</result>"
