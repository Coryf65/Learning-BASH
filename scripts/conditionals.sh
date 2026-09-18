#!/usr/bin/env bash

a=2
b=2

if [[ $a == $b ]]; then
    echo "a and b are the same"
fi

c=2
d=5

if [[ $c != $d ]]; then
    echo "c and d are NOT the same"
fi

if [[ -f bloodhound-gang.txt ]]; then
    echo "bloodhound-gang.txt exists and is a file."
fi