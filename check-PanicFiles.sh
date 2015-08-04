#!/bin/bash

# Name    : check-PanicFiles.sh
# Author  : Nick Smith
# Date    : 20150727
# Purpose : List only the .panic files and count how many lines

dontPanic=$(ls -l /Library/Logs/DiagnosticReports/*.panic | wc -l | sed 's/ //g')

echo "<result>$dontPanic</result>"
