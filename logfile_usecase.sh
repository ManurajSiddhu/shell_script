#!/bin/bash

#use these two > and >> 

read -p "enter file name for taking log : " file

if [ ! -f $file ]
then
	touch $file 
	echo "log file is created "
	ls >> $file
	echo "successfully send or saved data"
else
	ls >> $file
fi


