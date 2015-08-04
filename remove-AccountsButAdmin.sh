#!/bin/bash

# Name    : remove-AccountsButAdmin.sh
# Author  : Nick Smith
# Date    : 20150220
# Purpose : Deletes all accounts except "Shared" and "support".

theList=`/bin/ls /Users | /usr/bin/grep -v -e "Shared" -e "support"`

for u in $theList ; do

if [[ `/usr/bin/dscl . read /Groups/admin GroupMembership | /usr/bin/grep $u -c` == 1 ]]
 
    then /bin/echo "Deleting all accounts but [Admin]..."
 
    else /usr/bin/dscl . delete /Users/$u && /bin/rm -Rf /Users/$u

fi
 
done
