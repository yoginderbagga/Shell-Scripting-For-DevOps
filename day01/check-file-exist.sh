#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Use read to take inputs from user and apply IF-ELSE condition
#       Scope: For the learning
#
####################################################################

echo -e  "--------------CHECK IF FILE AND DIRECTORY EXIST-------------- \n"

FPATH=/home/yoginderbagga/Shell-Scripting-For-DevOps/day01/hello.sssh
DIRPATH=/home/yoginderbagga/projects

if [ -f $FPATH ]; then
	echo "File hello.sh exist"

else 
	echo "File not found"
	echo "Check if the directory exist"

	if [ -d $DIRPATH ]; then
		echo "Directory exist"
	else 
		echo "Directory not found"
	fi
fi

