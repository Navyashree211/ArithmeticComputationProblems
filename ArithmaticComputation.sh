#!/bin/bash -x

echo "enter the three inputs :: "
read a b c

result=$(($c*$a/$b))
echo $result
