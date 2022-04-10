#!/bin/bash

read arr1
arr=()

if [[ "$arr1" = *","* ]]; then
    IFS=','
    read -ra arr <<< "$arr1"
else
    IFS=' '
    read -ra arr<<<"$arr1" 
fi
n=${#arr[@]}
for (( i = 0; i < n ; i++ ))
do
    for (( j = i+1; j < n; j++ ))
    do
        if (( arr[i] > arr[j] )) 
        then
        let temp=arr[i]
        let arr[i]=arr[j]
        let arr[j]=temp 
        fi
    done
done

echo "${arr[*]}"