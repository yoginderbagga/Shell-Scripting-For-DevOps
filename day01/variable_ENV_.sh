#!/bin/bash

#####################################################################
#	
#	Name: Yoginder Bagga
#	Purpose: Environment variable in DevOps
#	Scope: For the learning
#
####################################################################



echo "This program Desmostrate Env Variable"

	## DECLARING APP_ENV as env variable, this will be accessible outside the script too. 
	export APP_ENV="Production"
	APP_PORT=8080

	echo "Application phase is in : $APP_ENV"
	echo "Application port is : $APP_PORT"
