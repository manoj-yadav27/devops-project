#!/bin/bash

case $1 in 
 1|3|5|7|9) echo " this is odd number "
	;;
2|4|6|8|10) echo " this is even number"
	;;
2|3|5|7|11) echo " this is a prime number"
	;;
0) echo " this is zero "
	;;
*) echo " invalid input "
	;;
esac

