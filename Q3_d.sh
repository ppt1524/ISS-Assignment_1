#!/bin/bash
input="$1"
let i=1
IFS=$'\n'
while read line; do
echo -n "Line Number: $i -> Count of words: "
    wc -w <<< "$line"
    echo " "
    let i=i+1
done < "$1"