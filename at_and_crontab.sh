#!/bin/bash

#this script is used for perform automation task


file="/home/siddhu/shell-script/at_and_cron_taks.txt"

if [ ! -f $file ]
then
	touch $file
fi

echo "this is $(date) file and folder backup $(ls) " >> $file

