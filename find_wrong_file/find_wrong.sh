#!/bin/bash
ls compressed_files | grep -v ".zip\|.rar\|.tar.gz" > tmp;
cut -d . -f 1 tmp > wrong_list;
rm tmp;