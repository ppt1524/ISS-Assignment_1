#!/bin/bash
read enter_string
rev_string=`echo $enter_string | rev`
for ch in $rev_string
do 
    ch1=$ch
    ch1=$(echo "$ch1" | tr "0-9a-zA-Z" "1-9a-zA-ZA")
    echo $ch1
done