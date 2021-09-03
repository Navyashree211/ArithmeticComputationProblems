#!/bin/bash -x
echo "Enter the Three value a,b,c"
read a
read b
read c
i=0
declare -A dict

eq1=$(($a+$b*$c))
eq2=$(($a*$b+$c))
eq3=$(($a+$b/$c))
eq4=$(($a%$b+$c))

dict[1]=$eq1
dict[2]=$eq2
dict[3]=$eq3
dict[4]=$eq4
