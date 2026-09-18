#!/usr/bin/env bash

greet() {
	local name=$1
	echo "hello $name"
}

# run greeter to call hello
for name in "$@"; do
    greet "$name"
done