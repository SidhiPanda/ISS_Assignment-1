#!/bin/bash

i=0

IFS=,
read -a a

echo "Array in original order :"
echo ${a[*]}
 
for ((i = 0; i<${#a[@]}; i++))
do
    for((j = 0; j<${#a[@]}-i-1; j++))
    do
        if [ ${a[j]} -gt ${a[$((j+1))]} ]
        then
            temp=${a[j]}
            a[$j]=${a[$((j+1))]}  
            a[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${a[*]}
