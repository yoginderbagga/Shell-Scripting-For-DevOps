#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Demonstrate use of Array 
#       Scope: For the learning
#
####################################################################


# Defining an array to store multiple values 
servers=("www.google.com" "www.facebook.com" "www.github.com")

for i in "${servers[@]}"		# ${servers[@]} To retrieve all the elements that you define above
do 
	ping -c 3 "$i" 
done 

