#!/usr/bin/env bash

f='test.jpg'

echo "using double square brackets"
if [[ $f == *.jpg ]]; then
    echo "$f is a jpg file"
else
    echo "$f is not a jpg file"
fi
echo
echo "using single square brackets, expects a literal match if we had many jpg files we would get an error"
if [ $f == *.jpg ]; then
    echo "$f is a jpg file"
else
    echo "$f is not a jpg file"
fi

echo

a=9
b=10

echo "b: $b  a: $a"
echo
echo "checking $b > $a, which is comparing them like strings..."
if [[ $b > $a ]]; then
    echo "$b is greater than $a"
else
    echo "uh oh"
fi

echo
echo "to compare as numbers we need to use [[ 10 -gt 9 ]]"
echo "we can also do (( b > a ))"
if (( b > a )); then
    echo "$b is greater than $a"
else
    echo "uh oh"
fi