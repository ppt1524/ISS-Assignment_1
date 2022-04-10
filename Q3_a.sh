#!/bin/bash
input="$1"
echo -n "The size of the given file is: "
wc -c "$1" | awk '{print $1}'