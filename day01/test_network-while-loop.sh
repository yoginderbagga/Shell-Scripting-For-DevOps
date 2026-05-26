#!/bin/bash

###################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Perform Web-Application Connectivity  testing with while-loop in script
#       Scope: For the learning
#
####################################################################

echo -e "-----------WEB-APPLICATION CONNECTIVITY TESTING---------- \n"




#Added -a with read to declare it as array
read -p "Enter the Web-Application Hostname: " -a  hostnames


# Define regex variable to store the pattern of alphabets you would like to validate
regex='^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$'



count=0

while [[ $count -lt ${#hostnames[@]} ]];
do 
	hostname="${hostnames[$count]}"
	
	echo -e "\n=========Testing : $hostname =========\n"


	# Validate whether the hostname is correct or not.
	if [[ "$hostname" =~ $regex ]]; then

		echo -e "Valid hostname\n"
	
		echo -e "\n -------PING-------"
		ping -c 3 "$hostname"

		echo -e "\n ------NSLOOKUP----"
		nslookup "$hostname"

		echo -e "\n ------DIG-------"
		dig "$hostname"
	else
		echo "Invalid hostname: $hostname"
		exit 1			# Immediately exit from the script if invalid hostname
	fi

	# Increment counter
	((count++))

done



	


