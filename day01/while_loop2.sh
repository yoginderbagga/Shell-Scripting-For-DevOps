#!/bin/bash

####################################################################
#
#	Name: Yoginder Bagga
#	Purpose: Demonstrate while loop usage
#	Scope: For the learning
#
####################################################################

echo -e "------------DEMONSTRAGE WHILE LOOP USAGE---------------- \n"

a=1
while [[ $a -lt 5 ]];
do 
	echo "Hello"
	((a++))
done 
