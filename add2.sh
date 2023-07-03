#!/bin/bash

echo "enter numbers to add"
                read numbers
                sum=0
                for i in $numbers
                 do
                         sum=`expr $sum + $i`
                 done
                 echo "sum of $numbers is $sum"

