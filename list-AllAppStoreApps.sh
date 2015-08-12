#!/bin/bash

# Name    : list-AllAppStoreApps.sh
# Author  : Nick Smith
# Date    : 20150801
# Purpose : Cycle through /Applications and list all apps downloaded/installed from App Store.

# Begin script
find /Applications -path '*Contents/_MASReceipt/receipt' -maxdepth 4 -print |\sed 's#.app/Contents/_MASReceipt/receipt#.app#g; s#/Applications/##'


# Version Info
# 1.0
# 1.1 - 20150801 - Changed sed argument to match one found on the net. Seems cleaner. NOTE
# 1.2 - 20150812 - Removed print to file and left it as sending to stdout.


# Notes
# 1. I wish I knew where I found that extra line of code. That gal/guy should be thanked.
