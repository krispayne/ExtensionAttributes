#!/bin/bash

# Name    : check-UpdateXProtect.sh
# Author  : Nick Smith
# Date    : 20150731
# Purpose : Detect when a client machine last updated it's XProtect from Apple.


theStatus=$(ls -l /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist | awk '{print $6,$7,$8}')


echo "<result>$theStatus</result>"
