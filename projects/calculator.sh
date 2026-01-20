#!/bin/bash


#make a calculator

echo "-----welcome------"

read -p "enter your number :" num

result=$num

echo "use these operators for calculation + , - , * , /  and press enter for print result "

while true
do
	read -p "enter your opertor :" operator
	if [[ $operator == "+" ]]
	then
		read -p "enter your number : " num
		let "result += num"
	elif [[ $operator == "-" ]]
	then
		read -p "enter your number : " num
                ((result -= num))
	elif [[ $operator == "*" ]]
	then
	        read -p "enter your number : " num
	        ((result *= num))
	elif [[ $operator == "/" ]]
	then
		read -p "enter your number :" num
		
		((result /= num))
	else
		echo "your result is :  $result "
		exit 1
	fi
done


