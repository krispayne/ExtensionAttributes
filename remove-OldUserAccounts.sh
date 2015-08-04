#!/bin/bash

# Name    : remove-OldUserAccounts.sh
# Author  : rlandgraf
# Date    : 20140210
# Purpose : Remove old users. Found here -> https://jamfnation.jamfsoftware.com/discussion.html?id=8915#responseChild53411

oldUsers=`find /Users -type d  -mtime +90 -maxdepth 1 | cut -d"/" -f3`

for i in $oldUsers; do
    if [[ $i = "account1" ]]; then next
    elif [[ $i = "account2" ]]; then next
    else 
        jamf deleteAccount -username $i -deleteHomeDirectory
        rm -Rf /Users/$i
    fi
done
