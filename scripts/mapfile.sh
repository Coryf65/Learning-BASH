#!/usr/bin/env bash

echo "mapfile and readarray do the same thing, reading from the file /files/data.txt"

array=()

# reading a file into an array
while read -r line; do
    array+=("$line")
done < ../files/data.txt

# print array
printf '<%s>\n' "${array[@]}"
