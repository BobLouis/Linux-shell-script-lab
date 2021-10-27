#!/bin/bash
input="./student_id"
while IFS= read -r line
do
  ls compressed_files | grep ${line} &> /dev/null
  if [ $? -eq 1 ]; then
    echo ${line} >> missing_list
  fi
done < "$input"