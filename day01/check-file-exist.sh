#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Use read to take inputs from user and apply IF-ELSE condition
#       Scope: For the learning
#
####################################################################

echo -e  "--------------CHECK IF FILE EXIST OR NOT-------------- \n"

FPATH=/home/yoginderbagga/Shell-Scripting-For-DevOps/day01/hello.sh

if [ -f $FPATH ]; then
	echo "File hello.sh exist"

else 
	echo "File not found"
fi
