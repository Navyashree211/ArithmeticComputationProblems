#!/bin/bash -x

echo "enter the three inputs :: "
read a b c

result=$(($a*$b+$c))
echo $result
