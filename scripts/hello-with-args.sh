#!/usr/bin/env bash
# now we are taking in args

# is $1 / the first argument set
if [[ -n $1 ]]; then
    name=$1
else
    read -p 'enter your name: ' name
fi

echo "hello $name"