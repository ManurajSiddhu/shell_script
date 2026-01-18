#!/bin/bash

# this shell script for perform Math/Arithmetic operations

a=10
b=20

<<com
there are two way to do math operation
com

# first one is using let

let add=$a+$b
let sub=$a-$b
let mul=$a*$b
let dev=$a/$b
let mod=$a%$b

echo "math operation on $a and $b are -"
echo "addition -- $add ,substraction -- $sub , multipilation -- $mul, devision -- $dev and modules -- $mod"

#second way without using let --

echo "second way"

echo " add -- $(($a+$b)) , sub -- $(($a-$b)) ,mul -- $(($a*$b)), dev -- $(($a/$b)) and modulus -- $(($a%$b))"


#make a arithmetic project with taking user input 

read -p "enter value :" x
read -p "enter value :" y

echo " add -- $(($x+$y)) , sub -- $(($x-$y)) ,mul -- $(($x*$y)), dev -- $(($x/$y)) and modulus -- $(($x%$y))"
