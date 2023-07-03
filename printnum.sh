#!/bin/bash
num=$1
pnum=0
while [ $pnum -le $num ]; do
echo $pnum
pnum=`expr $pnum + 1`
done


