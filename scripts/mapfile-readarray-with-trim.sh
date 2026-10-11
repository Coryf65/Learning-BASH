#!/usr/bin/env bash

mapfile -t array < ../files/data.txt

# print array
printf '<%s>\n' "${array[@]}"
