#!/usr/bin/env bash

# this works in a streaming fashion, no exit codes from grep though

i=0
while read -r word; do
    echo "$word"
    ((i++))
# first read from the file second sub process
done < <(grep d /usr/share/dict/words)

echo "found $i words"
