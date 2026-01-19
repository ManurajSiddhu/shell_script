#!/bin/bash

#this script used for perform logical operators
#logical operators are && , || , !

echo "check are you eligible for vote or not "
read -p "enter your age :" age
read -p "enter your country :" country

if [[ $age -ge 18 ]] && [[ $country == "india" ]]
then
	echo "you are eligible for vote "
else
	echo "you are not eligible for vote "
fi

#now check || operator 

echo "check you are eligible for job reqirement :"
read -p "enter your marks :" marks
read -p "enter your age : " agee

if [[ $marks -gt 70 ]] || [[ $agee -ge 25 ]]
then 
	echo "you are eligible "
else
	echo "you are not eligible "

fi

#comibe operator 

#con1 && con2 || con3

read -p "enter your gender :" gender

[[ $gender == "male" ]] && echo "you are male " || echo "you are female "

