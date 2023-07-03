#!/bin/bash
echo "enter the number to find its factorial"
read num
set -x

fact=1
while [ $num -gt 1 ] ; do
fact=`expr $fact \* $num`
num=`expr $num - 1`
done
echo "factorial is $fact "






 





