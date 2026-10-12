#!/usr/bin/env bash

# note this only works on certain types of OS like MacOS?

my_func() {
    echo "hello world"
}

trap my_func SIGINFO || exit 1

while true; do
    sleep 1
    echo running
done