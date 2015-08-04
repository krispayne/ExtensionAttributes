#!/bin/bash

# Name    : show-FileVault2Users.sh
# Author  : Nick Smith
# Date    : 20150717
# Purpose : Display a list of users that are registered with Filevault2.

theList=$( /usr/bin/fdesetup list | cut -d "," -f 1 )

echo "<result>$theList</result>"

# Should problaly be a grownup and switch from echo to printf
