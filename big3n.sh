#!/bin/bash

if [ $# -ne 3 ]; then
echo " give three numbers "
exit 1
fi
if [ $1 -ge $2 ] && [ $1 -ge $3 ]; then
echo " $1 is big "
elif [ $2 -ge $1 ] && [ $2 -ge $3 ]; then
echo " $2 is big "
else 
echo " $3 is big "
fi
