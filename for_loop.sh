#!/bin/bash

#this script is used for perform loops concepts

#there are three ways for writen for loop
#for i in 1 2 3 4 5 
#for j in ram sham bburao
#for k in {1..10}

#make a for loop program for print table

read -p "enter value for print table :" num

for i in {1..10}
do
	echo "$num * $i = $(($num*$i))"
done

echo "print string values "
for name in siddhu sham joni
do
	echo "you name is $name"
done


#makee some project 

file="/etc/passwd"

for i in $(tail $file)
do
	echo $i

done

