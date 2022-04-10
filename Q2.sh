#!/bin/bash
input_file="quotes.txt"
touch speech.txt
while IFS= read -r line
do
  author_name=`cut -d "~" -f2- <<< "$line"`
  quote=`echo $line | cut -d "~" -f1`
  if [ -z "$line" ]
  then
  continue
  else
  echo "$author_name once said, \""$quote"\""
  fi
done < "$input_file" > speech.txt