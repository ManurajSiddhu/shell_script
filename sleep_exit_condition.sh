#!/bin/bash

#write this code for perform sleep and exit conditions 

if [ $# -eq 0 ]
then
	echo "no argument provide"
	exit 1

fi

echo "your first argument is : $1"

while true
do
	echo $(date)
	sleep 2s
done

