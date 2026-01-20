#!/bin/bash

#write this script for perform connectivity-check script

read -p "enter the website which you wnat to ping " site

ping -c 1 $site

if [[ $? -eq 0 ]]
then
	echo "successfully connected "
else
	echo "unale to connect "
fi


