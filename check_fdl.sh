#!/bin/bash

echo "enter the name to check"
read name

if [ -f $name ] ; then
	echo " $name is a file "
elif [ -d $name ] ; then
	echo " $name is a directory "
elif [ -L $name ] ; then
	echo " $name is Link "
else
	echo " $name does not exist"
fi

