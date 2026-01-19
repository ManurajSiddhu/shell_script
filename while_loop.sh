#!/bin/bash

#this script is used for perform while loop


count=1
num=11

read -p "enter value for print table :" value

while [ $count -lt $num ]
do
	echo " $value * $count = $((value*count))"
	let count++
done


#read file with while loop

while IFS=":" read f1 f2 f3
do
	echo "user name is $f1"
done < /etc/passwd
