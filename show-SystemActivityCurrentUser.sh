#!/bin/bash

# Name    : show-SystemActivityCurrentUser.sh
# Author  : Nick Smith
# Date    : 2015
# Purpose : Query "sar" (System Activity Reporter) to gather machine usage for logged in user.

who | grep console
if [ `echo $?` == 0 ]
	then
echo "<result>$(/usr/bin/sar -u 1 5 2> /dev/null | grep "Average:" | awk '{print $2,$3,$4,$5}')</result>"
	else
exit 0

fi
