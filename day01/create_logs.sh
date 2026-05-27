#!/bin/bash

###################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Backup Script for Recording the Logs 
#       Scope: For the learning
#
####################################################################


echo -e "STORING LOGS AT THE DESTINATION FOLDER"


SOURCE="/home/yoginderbagga/Shell-Scripting-For-DevOps"
DESTINATION="/tmp"

mkdir -p /tmp/my_backup

FILE="$DESTINATION/my_backup/TRUTH"

tar -cvzf  $FILE_$(date +%Y-%m-%d).tar.gz $SOURCE



