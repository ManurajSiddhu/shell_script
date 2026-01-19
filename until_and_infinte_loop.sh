#!/bin/bash

#this script perform until and infinite loop

a=10

until [ $a -eq 1 ]
do
	echo $a
	let a--
done


#infinite loop  with while loop (using sleep for some wait)
<<op
while true
do
	echo "siddhu"
	sleep 2s
done


op

#infinite loop with for lloop

for((;;))
do
	echo "hi"
	sleep 2s
done

