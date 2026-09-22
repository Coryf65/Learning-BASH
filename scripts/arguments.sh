#!/usr/bin/env bash

set -x # turns on debug mode

first_name='cory'
last_name='fabian'

full_name="$first_name $last_name"

if [[ $first_name == 'cory' ]]; then
    echo "oh hey it's cory"
fi

echo "Hello $full_name!"
