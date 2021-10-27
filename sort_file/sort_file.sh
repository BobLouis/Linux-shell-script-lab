#!/bin/bash
cd /Users/kounuki/Linux_course/mini_project/sort_file/compressed_files;
mkdir -p zip;
mkdir -p rar;
mkdir -p tar.gz;
mkdir -p unknown;
for f in *.zip; do
  mv ${f} zip;
done

for f in *.tar.gz; do
  mv ${f} tar.gz;
done

for f in *.rar; do
  mv ${f} rar;
done

find . -maxdepth 1 -type f -exec mv {} unknown \;
