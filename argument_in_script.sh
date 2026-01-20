#!/bin/bash

#this script is used for perform argument practices

#how to access these argument inside our script?
#to get no . of arguments : $#
#to display all argument : $@
#to use or display a argument : $1 $2 ..

echo "first argument is : $1"
echo "second argument is : $2"
echo "all argument are : $@ and no of argument are : $#"

for i in $@
do
	echo "argument is $i"
done

#shifting 

echo "first argu is $1"

shift
echo "rest argument are : $@"
