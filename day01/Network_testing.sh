#!/bin/bash

echo -e "-----------WEB-APPLICATION CONNECTIVITY TESTING----------\n"

read -p "Enter Web-Application Hostnames (space separated): " -a hostnames

# Regex for hostname validation
regex='^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$'

# Counter variable
count=0

echo -e "\n----------------WEB-APPLICATION TESTING STARTED----------------\n"

# While loop
while [[ $count -lt ${#hostnames[@]} ]]
do
    hostname="${hostnames[$count]}"

    echo -e "\n========== Testing: $hostname ==========\n"

    # Validate hostname
    if [[ "$hostname" =~ $regex ]]; then

        echo "Valid hostname"

        echo -e "\n----- PING -----"
        ping -c 3 "$hostname"

        echo -e "\n----- NSLOOKUP -----"
        nslookup "$hostname"

        echo -e "\n----- DIG -----"
        dig "$hostname"

    else
        echo "Invalid hostname: $hostname"
    fi

    echo -e "\n----------------------------------------"

    # Increment counter
    ((count++))

done
