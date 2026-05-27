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


## CREATING THE BACKUP USING TAR AND 
tar -czf  "$DESTINATION/$BACKUP_FILE"  "$SOURCE"


echo -e "--------BACKUP OF $SOURCE IS COMPLETED AT $DESTINATION/$BACKUP_FILE--------\n"



