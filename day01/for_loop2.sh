#!/bin/bash

#####################################################################
#
#	Name: Yoginder Bagga
#	Purpose: Using for loop to repeat a particular tasks
#	Scope: For the learning
#
####################################################################

echo -e "----------------Demonstrating For Loop with Range-------------------"

for a in {1..10}
do	

	mkdir -p "Dir_$a"
	echo "Directory is created : $Dir_$a"
#	mkdir -p "Dir_$a"
done
