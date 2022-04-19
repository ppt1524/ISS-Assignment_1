#!/bin/bash
read enter_string
rev_string=`echo $enter_string | rev`
echo $rev_string


read enter_string
rev_string=`echo $enter_string | rev`
for ch in $rev_string
do 
    ch1=$ch
    ch1=$(echo "$ch1" | tr "0-9a-zA-Z" "1-9a-zA-ZA")
    echo $ch1
done


read enter_string
strlen=${#enter_string}

for (( i=$strlen/2 -1; i>-1; i--))
do 
    echo -n ${enter_string:i:1}
done
for (( i=(($strlen/2)); i<=strlen; i++))
do 
    echo -n ${enter_string:i:1}
done