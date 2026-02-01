#!/bin/bash


#monitor the free space 


free_space=$( free -mt | grep Total | awk '{print $4}' )
lowest_limit=500

if [ $free_space -lt $lowest_limit ]
then
	echo "WARNING, RAM is rinning low "
else
	echo "RAM Space is sufficient - $free_space "
fi

echo "Free space is $free_space"
