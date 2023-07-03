#!/bin/bash
echo " enter the name of the emplyee file "
read name
sed '1d' $name > temp 

while read line ; do
	age=`echo "$line" | awk -F " " '{print $3}'`
	if [ $age -gt 30 ] && [ $age -lt 50 ] ; then
	echo " $line " | awk -F " " '{print $1}'
	fi
done < temp 
