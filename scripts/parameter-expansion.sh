#!/usr/bin/env bash

# default to the logged in user
#name=${1:-$USER}
#name=${1?} # require this value to run
name=${1:?'Please supply your name...'} # require this value to run with a message


echo "hello $name!"

echo 'done'