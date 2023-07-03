#!/bin/bash

for i in $*
do
	fact=1
	num=$i
	while [ $num -gt 1 ]; do 
	fact=`expr $fact \* $num`
	num=`expr $num - 1`
	done
echo "factorial of $i is $fact"
done
echo "finding factorials of numbers finished"

