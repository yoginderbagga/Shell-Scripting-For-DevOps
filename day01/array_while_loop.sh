#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Demonstrate Array with for loop
#       Scope: For the learning
#
####################################################################

echo -e "--------DEMONSTRAGE ARRAY SCRIPT with FOR LOOP--------\n"

# DECLARING ARRAY VARIABLE "colors"
colors=("blue" "orange" "pink")

# ACCESSING THE ARRAY ELEMENT's VALUE with LOOP VARIABLE WHICH IS  "i" 
for i in "${colors[@]}"
do 
	echo "$i"

	 
done


