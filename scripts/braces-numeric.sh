#!/usr/bin/env bash

echo "showing how to increment numbers"

echo "using a subshell and seq"
for i in $(seq 1 10);do
    echo "$i"
done
echo

echo "using pure bash"
for i in {1..10}; do
    echo "$i"
done

echo
echo "you can place anything inside the loop"
for i in apple {1..10} grapes {1..4}; do
    echo "$i"
done