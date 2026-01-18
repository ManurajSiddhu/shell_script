#!/bin/bash

#this script is for doing array operations

a=(1 5 siddhu 42 "jaat is greate" )

echo ${a[*]}
echo "2nd item is ${a[1]},and third to fifth is ${a[*]:2:3} . "
a[0]=2
a+=(three and one)
echo ${a[*]}
unset a[1]
echo ${a[*]}
echo ${!a[*]}
 
declare -A b
b=([name]=siddhu [age]=21)
echo ${b[age]}
