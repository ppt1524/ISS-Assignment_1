#!/bin/bash
input="$1"
echo -n "The number of words in the file is: "
wc -w "$1" | awk '{print $1}'