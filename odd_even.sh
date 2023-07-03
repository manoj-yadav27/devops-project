#!/bin/bash
rm even_line odd_line
line_num=1
while read line ; do
	rem=`expr $line_num % 2`
	if [ $rem -eq 0 ] ; then
		echo " $line_num. $line " >> even_line
	else
		echo "$line_num. $line" >> odd_line
	fi
	line_num=`expr $line_num + 1`
done < $1
echo " ==================== EVEN LINES ========================= "
cat even_line
echo " ==================== ODD LINES ========================== "
cat odd_line

