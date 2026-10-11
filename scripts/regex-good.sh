#!/usr/bin/env bash

regex='^.*\/(.*) - ([0-2]{4}-[0-9]{2}-[0-9]{2})\..*$'

for f in ../files/*; do

    if ! [[ $f =~ $regex ]]; then
        echo "$f didn't match pattern"
        continue
    fi

    name=${BASH_REMATCH[1]}
    date=${BASH_REMATCH[2]}
    echo "$date: $name"

done