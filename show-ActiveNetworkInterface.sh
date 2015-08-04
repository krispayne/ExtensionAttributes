#!/bin/bash

# Name    : show-ActiveNetworkInterface.sh
# Author  : Nick Smith
# Date    : 20150802
# Purpose : Get the current Active Network Interface.

echo "<result>$(netstat -rn 2>&1 | /usr/bin/grep -m 1 'default' | /usr/bin/awk '{ print $6 }')</result>"

# This whole situation is useless.
