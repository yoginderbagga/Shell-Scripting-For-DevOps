#!/bin/bash

#####################################################################
#
#	Name: Yoginder Bagga
#	Purpose: Use read to take inputs from user and apply IF-ELSE condition
#	Scope: For the learning
#
####################################################################


echo -e "Script to demonstrate taking input from the user\n"
read -p "Enter your name: " name
read -p  "Enter your job: " job




if [[ "${name,,}" == "john" && "${job,,}" == "devops" ]]; then
	echo "Record confirmed"

elif [[ $name -eq "peter" && $job -eq "tester" ]]; then
	echo "Verifying from second statement"
	read -p "Enter your age:" age 

else 
	echo "No record exist"
fi 
