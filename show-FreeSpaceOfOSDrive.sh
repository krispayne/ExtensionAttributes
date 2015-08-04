#!/bin/bash

# Name    : show-FreeSpaceOfOSDrive.sh
# Author  : Nick Smith
# Date    : 20120717
# Purpose : Policy to echo out the amount of free space on the OS drive

theSpace=$(echo "$(df -h | grep disk1 | awk 'NR==1 {print $3}' | cut -f 2 | sed 's/[^0-9]*//g') GB free, of $(df -h | grep disk1 | awk 'NR==1 {print $2}' | sed 's/[^0-9]*//g') GB")

echo "<result>$theSpace</result>"
