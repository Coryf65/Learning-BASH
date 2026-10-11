#!/usr/bin/env bash

# only read up to x number of lines
mapfile -n 2 array < ../files/data.txt

# print array
printf '<%s>\n' "${array[@]}"