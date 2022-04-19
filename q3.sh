#!/bin/bash

read file

bytes=$(wc -c < $file)
echo $bytes

lines=$(wc -l < $file)
echo $lines

words=$(wc -w < $file)
echo $words

awk '{print "Line No.: " NR-1 " - Count of Words: " NF}' ./$file

grep -wo '[[:alpha]]\+' $file | sort | uniq -cd | awk '{
    if($1!="1")
    {
        print "Word : "$2" - Count of Word : "$1
    }
}'