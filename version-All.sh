#!/bin/bash

# Name    : version-All.sh
# Author  : Nick Smith
# Date    : 20120304
# Purpose : Reports stuff and things about items and their whatnots

printf '\e[8;30;80t'
clear
echo  "#------------------------------------------------------------------------------#"
echo  "#                   Gulfstream Software Version Reporter:                      #"
echo  "#  This script will report back the version info of several key applications   #"
echo  "#  and plugins. It can be found in /usr/sbin/versions.sh if editing is needed  #"
echo  "#------------------------------------------------------------------------------#"
sleep 5
clear
#
#
#
# Office 2011
if [ -f /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app/Contents/Info.plist ]
	then
	officeVersion=$( defaults read /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app/Contents/Info.plist CFBundleShortVersionString )
else
	officeVersion="Missing!"
fi
#
#
#
# Acrobat Pro
if [ -f /Applications/Adobe\ Acrobat\ X\ Pro/Adobe\ Acrobat\ Pro.app/Contents/Info.plist ]
	then
	acrobatVersion=$( defaults read /Applications/Adobe\ Acrobat\ X\ Pro/Adobe\ Acrobat\ Pro.app/Contents/Info.plist CFBundleShortVersionString )
else
	acrobatVersion="Missing!"
fi
#
#
#
# Safari
if [ -f /Applications/Safari.app/Contents/Info.plist ]
	then
	safariVersion=$( defaults read /Applications/Safari.app/Contents/Info.plist CFBundleShortVersionString )
else
	safariVersion="Missing!"
fi
#
#
#
# Firefox
if [ -f /Applications/Firefox.app/Contents/Info.plist ]
	then
	firefoxVersion=$( defaults read /Applications/Firefox.app/Contents/Info.plist CFBundleShortVersionString )
else
	firefoxVersion="Missing!"
fi
#
#
#
# Chrome
if [ -f /Applications/Google\ Chrome.app/Contents/Info.plist ]
	then
	chromeVersion=$( defaults read /Applications/Google\ Chrome.app/Contents/Info.plist CFBundleShortVersionString )
else
	chromeVersion="Missing!"
fi
#
#
#
# iTunes
if [ -f /Applications/iTunes.app/Contents/Info.plist ]
	then
	itunesVersion=$( defaults read /Applications/iTunes.app/Contents/Info.plist CFBundleShortVersionString )
else
	itunesVersion="Missing!"
fi
#
#
#
# Lync
if [ -f /Applications/Microsoft\ Lync.app/Contents/Info.plist ]
	then
	lyncVersion=$( defaults read /Applications/Microsoft\ Lync.app/Contents/Info.plist CFBundleShortVersionString )
else
	lyncVersion="Missing!"
fi
#
#
#
# Java
if [ -f /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Enabled.plist ]
	then
	javaVersion=$( defaults read /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Enabled.plist CFBundleVersion )
else
	javaVersion="Missing!"
fi
#
#
#
# Flash
if [ -f /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/version.plist ]
	then
	flashVersion=$( defaults read /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/version.plist CFBundleShortVersionString )
else
	flashVersion="Missing!"
fi
#
#
#
# Citrix
if [ -f /Library/Internet\ Plug-Ins/Flash\ Player.plugin/CitrixICAClientPlugIn.plugin/Contents/Info.plist ]
	then
	citrixVersion=$( defaults read /Library/Internet\ Plug-Ins/CitrixICAClientPlugIn.plugin/Contents/Info.plist CFBundleShortVersionString )
else
	citrixVersion="Missing!"
fi
#
#
#
# Silverlight
if [ -f /Library/Internet\ Plug-Ins/Silverlight.plugin/Contents/Info.plist ]
	then
	silverlightVersion=$( defaults read /Library/Internet\ Plug-Ins/Silverlight.plugin/Contents/Info.plist CFBundleShortVersionString )
else
	silverlightVersion="Missing!"
fi
#
#
#
#
/usr/bin/printf "\n------Applications------\n"
/usr/bin/printf "\nAcrobat Pro = $acrobatVersion\nFirefox     = $firefoxVersion\niTunes      = $itunesVersion\nLync        = $lyncVersion\nOffice 2011 = $officeVersion\nSafari      = $safariVersion\n"
/usr/bin/printf "\n------Browsers-----------\n"
/usr/bin/printf "\nFirefox     = $firefoxVersion\nChrome      = $chromeVersion\nSafari      = $safariVersion\n"
/usr/bin/printf "\n------Plugins-----------\n"
/usr/bin/printf "\nCitrix      = $citrixVersion\nJava        = $javaVersion\nFlash       = $flashVersion\nSilverlight = $silverlightVersion\n"
echo ""
echo ""

