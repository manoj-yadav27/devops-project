#!/bin/bash

product=1
for i in $*
do
product=`expr $product \* $i`
done
echo "the product is $product"

