#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Demonstraing Array Concept with Ping
#       Scope: For the learning
#
####################################################################


echo -e "---------------DEMONSTRATING ARRAY WITH PING \n---------------------"

HOSTS=("google.com" "facebook.com" "linkedin.com")


for access in "${HOSTS[@]}"
do
	ping -c 3 $access
done
