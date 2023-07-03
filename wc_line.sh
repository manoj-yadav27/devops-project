#!/bin/bash
echo "enter the file name to check number of words in each line"
read name
num=1
while read line
do
word_count=`echo $line | wc -w`
echo "$num : $word_count"
num=`expr $num + 1`
done < $name
