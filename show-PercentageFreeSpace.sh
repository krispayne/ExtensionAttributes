#!/bin/bash

# Name    : show-PercentageFreeSpace.sh
# Author  : Nick Smith
# Date    : 20150730
# Purpose : Detect the percentage of free space on the OS drive.

echo "<result>`df / | grep "/" | awk '{print $8}'`</result>"
