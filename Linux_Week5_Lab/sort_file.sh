#!/bin/bash
cd /Users/kounuki/Linux_course/mini_project/Linux_Week5_Lab/compressed_files;
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

for f in *.; do
  mv ${f} unknown;
done
