#!/bin/bash

echo "enter the numbers to add"
read num 
sum=0
for i in $num
do
sum=`expr $sum + $i`
done
echo "sum of the numbers is  $sum"

