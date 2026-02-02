#!/bin/bash

#This script is used for perform user management operations for creating user

#Script should be execute with sudo/root access
if [ "${UID}" -ne 0 ]
then
	echo "Please run  with sudo or root ."
	exit 1
fi

#user should provide one argument atleast as username else guide 
if [ $# -lt 1 ]
then
	echo "usage : $0 user_name [comment]..."
	echo "create a user with name user_name and comment field of commrnt"
	exit 1
fi


#store 1 argument as username 

user_name="$1"

#In case of mate than one argument, store it as account comments
shift
comment="$@"

#take passwd 
read -p "enter the passwd :" PASSWD

#create the user

useradd -c "$comment" -m $user_name

#check if user is successfully created or not 
if [ $? -ne 0 ]
then
	echo "user creation unsuccess"
	exit 1
fi

#set the passwd the users

echo $PASSWD | passwd --stdin $user_name

#check is passwd is succesfully set or not 
if [ $? -ne 0 ]
then
        echo "passwd cant asigned "
        exit 1
fi

#display the info

echo 
echo "username : $user_name"
echo
echo "passwd : $PASSWD"
echo
echo "user add successfully "

