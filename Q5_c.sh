#!/bin/bash
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