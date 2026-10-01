#!/usr/bin/env bash

# swapped parens from curlys
greet() {
    name=$1
    echo "hello $name"
}

goodbye() {
    name=$1
    echo "goodbye $name"
}

# a main sort of syntax, only called if ran directly
if ! (return 2>/dev/null); then
    # ran directly
    greet cory
    goodbye dude
fi
