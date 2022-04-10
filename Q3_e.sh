#!/bin/bash
input_file="$1"

grep -E -o '\w++' "$input_file" | sort >"temporary.txt"

uniq -c "temporary.txt" > "count.txt"
while read -r line;
do
arr=($line)
if (($((${arr[0]}-1))==0))
then
continue
else
echo "Word : ${arr[1]}  - Number of Repetitions : $((${arr[0]}-1))"
fi
done < "count.txt"

rm count.txt
rm temporary.txt