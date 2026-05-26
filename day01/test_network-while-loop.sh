#!/bin/bash

###################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Perform Web-Application Connectivity  testing with while-loop in script
#       Scope: For the learning
#
####################################################################

echo -e "-----------WEB-APPLICATION CONNECTIVITY TESTING---------- \n"




read -p "Enter the Web-Application Hostname: " hostname

# Define regex variable to store the pattern of alphabets you would like to validate
regex='^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$'


# Validate whether the hostname is correct or not.
if [[ "$hostname" =~ $regex ]]; then
	echo -e "Valid hostname\n"
	echo -e  "---------------------WEB-APPLICATION TESTING STARTED------------\n"

# This block will execute if the above hostname is correct
	while [[ test -lt 4 ]];
	do 
		ping -c 3 $hostname
		nslookup $hostname
		dig $hostname

		((test++))
	done 


else 
	echo -e "Invalid hostname\n"
fi 




	


