#!/usr/bin/env bash

source ./lib/greetings.sh || exit 1
# you can also use `. ./lib/greetings.sh`

# pulling in from lib/greetings
# showing how to include external programs
greet cory
greet bean
goodbye dude