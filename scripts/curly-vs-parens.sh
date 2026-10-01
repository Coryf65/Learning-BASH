#!/usr/bin/env bash

source ./lib/greetings-bad.sh || exit 1

name='buddy'

echo "name = $name"
{ greet cory | tr r we; } | nl
echo "name = $name"