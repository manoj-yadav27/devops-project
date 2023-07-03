#!/bin/bash

echo -e "lets find the biggest of two numbers\n enter the first number"
read num1
echo "enter the second number"
read num2
if [ $num1 -gt $num2 ]; then
	echo " $num1 is bigger than $num2 "
elif [ $num1 -lt $num2 ]; then
	echo " $num2 is bigger than $num1 "
else 
	echo "$num1 is equal to $num2"
fi

