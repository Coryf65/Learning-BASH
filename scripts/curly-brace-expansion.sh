#!/usr/bin/env bash

filename='my-file'

echo "treated as strings the file do not have to exist"
echo "$filename."{txt,jpg,mov}
echo

echo "printing from an array using the same data"
arr=( "$filename."{txt,jpg,mov} )

for item in "${arr[@]}"; do
    echo "$item"
done
