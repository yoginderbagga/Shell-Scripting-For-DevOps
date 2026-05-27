#!/bin/bash

###################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Backup Script for Recording the Logs 
#       Scope: For the learning
#
####################################################################


echo -e "-------------------CREATING BACKUPS USING TAR-----------------------"

## DEFINING VARIABLES TO STORE SOURCE, DESTINATION and DATE  

SOURCE="/home/yoginderbagga/Shell-Scripting-For-DevOps"
DESTINATION="/tmp/my_backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)


## CREATING DIRECTORY to FOR BACKUP DESTINATION
mkdir -p $DESTINATION


## MUST DEFINE FILE NAME for the BACKUP FILE as TAR DOESN"T AUTOMATICALLY INVENT BACKUP FILE NAME
BACKUP_FILE="backup_$DATE.tar.gz"


## Give FULL PATH + FILE NAME so its cleanr where the BACKUP SHOULD EXACTLY GO not just in the home or working directory. 
tar -czf  "$DESTINATION/$BACKUP_FILE"  "$SOURCE"


if [[ $? -eq "0" ]]; then
	echo "Backup Successfully Completed"
	echo "Deleting backup older than 7 days..."

	find "$DESTINATION" -type f -name "*.tar.gz" -mmin +80 -delete
else

	echo "Backup Failed"
	exit 1
fi



