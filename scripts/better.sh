#!/usr/bin/env bash

# make an asscioative array
declare -A shells

# setting the IFS to be colon, read and dont mangle backslashes
while IFS=: read -r name pass uid gid gecos home shell; do
    # skip comments, if they start with a pound
    if [[ name == '#'* ]]; then
        continue
    fi

    shells[$name]=$shell

done < /etc/passwd

echo "$USER has the shell : ${shells[$USER]}"