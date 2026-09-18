#!/usr/bin/env bash

# like objects in JS, hashmaps, Dictionaries in Python
# like a Key Value pair
declare -A array

# we could test if the associative array is available to use in hte current bash version was added 4.0
if ! declare -A test_array; then
    echo "Associative arrays are not supported in this version of bash." >&2
    exit 1
fi

array[foo]=1
array[bar]=2
array[baz]=3

echo "foo: ${array[foo]}"
echo "bar: ${array[bar]}"
echo "baz: ${array[baz]}"
echo "non exixsting value: ${array[non_existing_key]}"
echo
echo "all keys: ${!array[@]}"
echo "all values: ${array[@]}"
echo "length: ${#array[@]}"
echo
echo "looping through all keys:"
for key in "${!array[@]}"; do
    echo "$key: ${array[$key]}"
done
echo

