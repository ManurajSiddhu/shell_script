#!/bin/bash

#this script is used for manage file on based of size and perform archive 

BASE=/home/siddhu/shell-script/projects/
DAYS=10
RUN=0
DEPTH=1

#check if directory exist or not
if [ ! -d $BASE ]
then
	echo "directory not present"
	exit 1
fi

#check archive folder 

if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#comprees the file which ones are greater then 20MB into archive folder
#firstlly i make a archive_practice.txt which is 25MB 
#before run script 
#-rw-r--r--. 1 siddhu siddhu 25M Feb  2 07:52 archive_prectice.txt
#after run the script 
#-rw-r--r--. 1 siddhu siddhu 1.4M Feb  2 07:52 archive_prectice.txt.gz



for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
	if [ $RUN -eq 0 ]
	then
		gzip $i || exit 1
		mv $i.gz $BASE/archive/ || exit 1
	fi
done

