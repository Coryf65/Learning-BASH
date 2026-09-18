#!/usr/bin/env bash

array=(foo bar baz)
copy_array=("${array[@]}")
copy_array+=(buddy guy dude)

echo "array: $array"
echo
echo "0: ${array[0]}"
echo "1: ${array[1]}"
echo "2: ${array[2]}"
echo "3: ${array[3]}"
echo

echo "-1: ${array[-1]}"
echo "-2: ${array[-2]}"
echo

index=2
echo "index: ${array[$index]}"
echo "index: ${array[index]}"
echo

echo "*: ${array[*]}"
echo "@: ${array[@]}"
echo

echo "looping through array*:"
for i in "${array[*]}"; do
    echo "$i"
done
echo

echo "looping through array@:"
for i in "${array[@]}"; do
    echo "$i"
done
echo

echo "looping through copy_array:"
for i in "${copy_array[@]}"; do
    echo "$i"
done

echo "$(declare -p copy_array)"
echo
echo "length: ${#copy_array[@]}"