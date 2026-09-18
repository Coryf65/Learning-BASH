#!/usr/bin/env bash

echo "normal in for loop"
for thing in "$@"; do
    echo "Thing is $thing"
done

echo "letter ranges"
for thing in {a..f}; do
    echo "thing is $thing"
done

echo "number ranges\n"
# like range
for thing in {1..5}; do
    echo "thing is $thing"
done

echo "you can also use c syntax? in bash?"
max=5
for ((i = 0; i < max; i++)); do
    echo "thing is $i"
done