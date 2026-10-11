#!/usr/bin/env bash

mapfile array < ../files/data.txt

# print array
printf '<%s>\n' "${array[@]}"
