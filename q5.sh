#!/bin/bash

read string

echo $string | rev

len=${#string}

subString=$(echo "${string:0:len}" | tr "0-9a-zA-Z" "1-90b-zaB-ZA") 
echo $subString | rev

halfRev=$(echo "${string:0:len/2}" | rev)
halfRev="${halfRev}$(echo "${string:len/2:len/2}")"
echo $halfRev