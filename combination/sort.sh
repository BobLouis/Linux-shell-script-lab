#!/bin/bash
input="./student_id"
while IFS= read -r line
do
  ls compressed_files | grep ${line} &> /dev/null
  if [ $? -eq 1 ]; then
    echo ${line} >> missing_list
  fi
done < "$input"

ls compressed_files | grep -v ".zip\|.rar\|.tar.gz" > tmp;
cut -d . -f 1 tmp > wrong_list;
rm tmp;

cd compressed_files;
mkdir -p zip;
mkdir -p rar;
mkdir -p tar.gz;
mkdir -p unknown;
for f in *.zip; do
  mv ${f} zip;
done

cd zip;
for f in *.zip; do 
  unzip ${f};
done
cd ..;

for f in *.tar.gz; do
  mv ${f} tar.gz;
done

cd tar.gz;
for f in *.tar.gz; do 
  tar xf "$f";
done
cd ..;

for f in *.rar; do
  mv ${f} rar;
done

cd rar;
for f in *.rar; do 
  unrar e "$f";
done
cd ..;

find . -maxdepth 1 -type f -exec mv {} unknown \;
