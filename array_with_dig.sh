#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Demonstrate Array with Dig command
#       Scope: For the learning
#
####################################################################


echo -e "------------------DEMONSTRATE ARRAY WITH DIG COMMAND-------------\n"

#HOSTS=("google.com" "facebook.com" "gitlab.com")

read -p "ENTER HOSTNAME TO PERFORM DNS OPERATION " HOSTS


for check in "${HOSTS[@]}"
do 
	dig soa "$check"
done 
