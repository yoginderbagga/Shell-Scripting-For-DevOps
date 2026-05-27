#!/bin/bash

####################################################################
#
#       Name: Yoginder Bagga
#       Purpose: Display System Stats including Process, Memory, CPU
#       Scope: For the learning
#
####################################################################


echo -e "-------------SCRIPT TO DISPLAY HIGH CPU PROCESS, MEMORY and USER---------------\n"

high_memory(){
free -h | awk 'NR==2 { print "available memory : " $7 }'
}


top_process(){

ps aux --sort=-%mem | awk 'NR==2 { print "Total memory process : user="$1" pid="$2" mem="$4 }'

# ps aux --sort=-%mem | awk 'NR==2 { print "Top memory process: user="$1" pid="$2" mem%="$4 }'

}


check_storage(){
df -h | awk 'NR==2 { print "Available Disk : "$4}'
}


echo "-----SYSTEM DETAILS----"

high_memory
top_process
check_storage
