#!/bin/bash
touch temporary.txt
awk '!x[$0]++' quotes.txt > temporary.txt
mv temporary.txt quotes.txt