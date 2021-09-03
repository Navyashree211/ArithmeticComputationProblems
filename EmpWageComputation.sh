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

array[ ((i++)) ]=${dict[1]}
array[ ((i++)) ]=${dict[2]}
array[ ((i++)) ]=${dict[3]}
array[ ((i++)) ]=${dict[4]}

for((i=0;i<${#array[@]};i++))
do
   for((j=0;j<${#array[@]}-$i-1;j++))
    do
       if((${array[$j]}>${array[$j+1]}))
        then
             temp=${array[$j]}
             array[$j]=${array[(($j+1))]}
              array[$j+1]=$temp
        fi
     done
done
echo "Sorting Result and Show in the Ascending Order:${array[@]}"

