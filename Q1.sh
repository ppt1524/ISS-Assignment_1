#!/bin/bash
sed -r '/^\s*$/d' quotes.txt

awk '!seen[$0]++' quotes.txt 