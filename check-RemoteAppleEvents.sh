#!/bin/bash

# Name    : check-RemoteAppleEvents.sh
# Author  : Nick Smith
# Date    : 20150801
# Purpose : Check access to Remote Apple Events on client machine.
#			It will report Yes or No if RAE is enabled or not.

echo "<result>$(/usr/sbin/systemsetup -getremoteappleevents | awk '{print $4}')</result>
