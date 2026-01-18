#!/bin/bash

#this shell script for doing script operations

myvar="Hey Siddhu , Are You a cloud enginner?"

echo ${myvar}

echo "the length of the string is ${#myvar}"
echo "the upper case ----- ${myvar^^}"
echo "the lower case ----- ${myvar,,}"

#relpace the string character
newst=${myvar/cloud/devops}
echo "new string is -- ${newst}"

#slicing 

echo "slice part -- ${myvar:4:9}"

