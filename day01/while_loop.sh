#!/bin/bash

#####################################################################
#
#	Name: Yoginder Bagga
#	Purpose: Demonstrating While Loop to perform an action repeatedly based on condition.
#	Scope: For the learning
#
####################################################################

echo -e "-----------WHILE LOOP FOR REPEATING BASED ON CONDITION-------------"

count=1
while [ $count -le 5 ];
do 
	mkdir -p "dir$count"
	((count++))	
	echo "Directory "dir$count" is created"
done
