#!/bin/bash

# Name    : show-CurrentUsersPasswordDaysLeft.sh
# Author  : Nick Smith
# Date    : 20150803
# Purpose : Query AD with Centrifies "adquery" tool for password days remaining.

# myVariables
currentUser=`ls -l /dev/console | cut -d " " -f 4`

# Begin script
/usr/bin/adquery user -A $currentUser | grep passwordWillExpire: | sed 's/passwordWillExpire://g'
