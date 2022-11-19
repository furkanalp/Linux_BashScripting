#!/bin/bash

while true
do
  read -p 'Please write your filename: ' FILE 
  if [[ $FILE == '' ]]
  then
    echo "Please give a file"
  elif [[ ! -f $FILE ]]
  then
    echo "Please give an existing file"
  else
    break
  fi
done

cat $FILE | grep -i serdar | grep -i Terminate | grep -Eo "i-[a-zA-Z0-9]{17}" | sort | uniq > result.txt 



#other way
#cat event_history.csv | grep -i serdar | grep -i terminateinstances | cut -d',' -f 10 | cut -d':' -f 2 | sed 's/""//' | sed 's/""}//' | sed 's/]"//' | tee result.txt