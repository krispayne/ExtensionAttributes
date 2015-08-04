#!/bin/bash

# Name    : show-MDMProfiles.sh
# Author  : Nick Smith
# Date    : It's too late
# Purpose : stuff


echo "<result>`profiles -C -v | awk -F": " '/attribute: name/{print $NF ","}' | sort`</result>"
