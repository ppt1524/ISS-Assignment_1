#!/bin/bash
input="$1"
echo -n "The number of lines in the file is: "
cat "$1" | wc -l