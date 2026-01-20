#!/bin/bash


#htis script is used for perform functions

function sid {
	echo "cloud engineer"
	echo "devops"

}

sid

#second way to use funtion

sidd () {

	echo "linux"
	echo "ec2,aws"
}
sidd

#function with arguments

addition () {
	local num1=$1
	local num2=$2

	let add=$num1+$num2
	echo "sum of $num1 and $num2 is $add"
}
addition 5 6

echo "enter num for addition : "

read a
read b

addition $a $b
