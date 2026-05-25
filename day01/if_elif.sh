#!/bin/bash
####################################################################
#
#	Name: Yoginder Bagga
#	Purpose: IF-ELIF statement allows you to test multiple conditions in a single block
#	Scope: For the learning
#
####################################################################

science=80
english=78
maths=61

	
## check if first condition is met or not
if [ $maths -gt 60 ]; then
	echo "You have scored above average"

## since first condition didn't met, so move to next condition
elif [ $maths -eq 60 ]; then
	echo "You are eligible for next class"

## second condition didn't met either, so proceeds to run the final statement
else 
	echo "Marks is less than 60"
fi

