#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Demonstrate exit code usage in bash
#       Scope: For the learning
#
####################################################################

File="/home/yoginderbagga/Pictures/Screenshots/minikube_error.png"

#Exit codes are used to tell shell or other program / scripts about the success or failure of the program. Its not actually meant to print the exit status value to the terminal. 

if [ -f $File ]; then 
	echo "File does exist"
	exit 0
else 
	echo "Fiel doesn't exist"
	exit 1
fi


#However, still if you would like to print the error code to the screen then you can run below command to get that. 
#yoginderbagga@fedora:~/Shell-Scripting-For-DevOps/day01$ ./exit_code.sh 
#File does exist
#yoginderbagga@fedora:~/Shell-Scripting-For-DevOps/day01$ echo $?
#0
#yoginderbagga@fedora:~/Shell-Scripting-For-DevOps/day01$ 
#



