#!/bin/bash

# Name    : show-MacSerialNumber.sh
# Author  : Nick Smith
# Date    : 20140901
# Purpose : Read and display the hardware serial number for a Mac.

theSerial=$(system_profiler SPHardwareDataType | grep 'Serial Number (system)' | awk '{print $NF}')

echo "<result>$theSerial</result>"
