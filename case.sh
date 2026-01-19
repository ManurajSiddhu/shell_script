#!/bin/bash 

#this script for perform case study conditions

echo "HEY choice one option"
echo "a for print date "
echo "b for calander "
echo "c for check the current directory "

read choice

case $choice in 
	a)date;;
	b)cal;;
	c)pwd;;
	*)echo "please enter valid choice"
esac

