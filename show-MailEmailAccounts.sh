#!/bin/bash

# Name    : show-MailEmailAccounts.sh
# Author  : Nick Smith
# Date    : 20150803
# Purpose : Query /Users/$USER/Library/Mail/V2/MailData/Accounts.plist for active email accounts.

# myVariables
currentUser=`ls -l /dev/console | cut -d " " -f 4`

# Begin script
echo "<result>$(defaults read /Users/$currentUser/Library/Mail/V2/MailData/Accounts.plist DeliveryAccounts | grep "CanonicalEmailAddress" | awk '{print $3}' | sed 's/[";]//g')</result>"
