#!/bin/bash

echo " select any option among the following to calculate"
echo -e "1)ADD \n2)SUBTRACT \n3)MULTIPLY \n4)DIVIDE \n5)EXIT "
read opt

case $opt in 
1) echo "enter the numbers to add "
		read numbers
		sum=0
		for i in $numbers
		do
			sum=`expr $sum + $i`
		done
	echo -e "sum of $numbers is $sum\n \n "
/home/ec2-user/shellscripts/menucalc.sh
	;;

2) echo " enter two numbers to find the difference "
	echo "enter the first number"
	read num1
	echo "enter the second number"	
	read num2
	if [ $num1 -gt $num2 ]; then
		diff=`expr $num1 - $num2 `
	else
		diff=`expr $num2 - $num1 `
	fi
	echo -e " the difference between $num1 and $num2 is $diff \n\n "
/home/ec2-user/shellscripts/menucalc.sh
	;;
3) echo "enter the numbers to find the product of"
	read numbers
	prod=1
	for i in $numbers
	do
		prod=`expr $prod \* $i`
	done
	echo -e " the product of $numbers is $prod \n\n" 
/home/ec2-user/shellscripts/menucalc.sh
	;;
4) echo " enter the dividend"
	read dend
	echo "enter the divisor"
	read sor
	quot=`expr $dend \/ $sor`
	echo -e "the answer is $quot \n\n"
/home/ec2-user/shellscripts/menucalc.sh
	;;

5) echo " you have opted for EXIT "
	;;
esac
