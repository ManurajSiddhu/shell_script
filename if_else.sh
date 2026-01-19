#!/bin/bash

#this script for perform shell script operations


read -p "enter your marks :" marks

if [ $marks -gt 40 ]
then
	echo "you are pass "
else
        echo "you are not pass "
fi	


#a practice project 

echo "check greater number "
echo "enter you number :"
read num1
read num2

if [ $num1 -gt $num2 ];then
	echo " $num1 is greatewr than $num2 "

elif [ $num1 -lt $num2 ];then
	echo " $num2 is greater than $num1 "
else
        echo " both numbers are equal "	
fi


