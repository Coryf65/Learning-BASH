#!/usr/bin/env bash


re='^(d|j).*$'
input='dave'

if [[ $input =~ $re ]]; then
    echo match

    # special var that is an array, print all elements
    # printf '%s\n' "${BASH_REMATCH[@]}"
    full_string=${BASH_REMATCH[0]}
    name=${BASH_REMATCH[1]}
    echo "full string: '$full_string'"
    echo "found: '$name'"

else
    echo no match
fi