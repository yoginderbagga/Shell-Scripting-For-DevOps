#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Use read to take inputs from user and apply IF-ELSE condition
#       Scope: For the learning
#
####################################################################

echo -e  "--------------CHECK IF FILE AND DIRECTORY EXIST-------------- \n"

FPATH=/home/yoginderbagga/Shell-Scripting-For-DevOps/day01/hello.sh
DIRPATH=/home/yoginderbagga/projects

if [ -f $FPATH ]; then
	
	echo -e "✅ File hello.sh exist \n"

else 
	echo "File not found"
fi

	echo -e "Check if the directory exist \n"

if [ -d $DIRPATH ]; then

	echo "✅ Directory exist"
else 
		echo "Directory not found"
	
fi

