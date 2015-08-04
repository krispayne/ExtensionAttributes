#!/bin/bash

# Name    : remove-FlashPlayerParts.sh
# Author  : Nick Smith
# Date    : 20120621
# Purpose : Removes Flash Player "Install Manager" and pref pane.


#Removes Adobe Flash Player Intall Manager from Utilities Folder
/bin/rm -Rf /Applications/Utilities/Adobe\ Flash\ Player\ Install\ Manager.app

# Removes Flash Player.prefPane from Preference Panes
/bin/rm -R /Library/Preference\ Panes/Flash\ Player.prefPane
