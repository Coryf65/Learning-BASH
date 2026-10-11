#!/usr/bin/env bash


my_func() {
    local line=$1
    echo "(mapfile) called with line: $line"
}

# only read up to x number of lines
mapfile -t -C my_func -c 1 array < ../files/data.txt

# print array
printf '<%s>\n' "${array[@]}"
