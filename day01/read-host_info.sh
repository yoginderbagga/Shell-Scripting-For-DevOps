#!/bin/bash

#####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Read host info from user 
#       Scope: For the learning
#
####################################################################

echo "GATHER HOST INFO FROM USER WITH READ"

read -p "Enter hostname:" hostname
read -p "Enter username:" username
#read -p "Enter ip:" ip

if [[ $hostname == "thingsoverflow.com" && $username == "yoyo" ]]; then
	echo "Identity confirmed"

else 
	echo "Details not found, please Enter your IP Address"
	read -p "Enter ip:" ip
	echo "Verifying the IP address..."

	if [[ $ip == "192.168.1.1" ]]; then
		echo "Successfully validated, you can connect"
	else	
		echo "Invalid IP address"
	fi
fi 
