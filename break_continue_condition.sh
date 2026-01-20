#!/bin/bash

#this script is used for perform the break and continue conditions


for i in {1..50}
do
	if [ $i -ge 40 ]
	then
		break
	fi
	echo $i
done

#continue statment

for j in {1..50}
do
	let r=$j%2
	if [ $r -ne 0 ]
	then
		continue
	fi
	echo " even number : $j "
done

