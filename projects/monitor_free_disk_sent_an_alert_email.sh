#!/bin/bash

#this script for monitor disk n bootand send email alert

FU=$( df -h | egrep -v "Filesystem|tmpfs" | grep n1p2 | awk '{print $5}' |tr -d % )

To="example@gmail.com"

if [ [ $FU -ge 80 ] ]
then
	echo "WARNINIG, disk space is low -$FU " | mail -s "Disk status" $TO
else
	echo "Disk , ALL GOOD"
fi


