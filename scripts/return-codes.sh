#!/usr/bin/env bash

func() {
    echo 'this goes to stdout' >&1
    echo 'this goes to stderr' >&2
    return 0
}

# we can throw away out by doing >/dev/null

var=$(func)
code=$?

echo "output=$var, code=$code"

