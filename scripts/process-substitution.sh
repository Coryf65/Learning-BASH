#!/usr/bin/env bash

i=0
while read -r word; do
    echo "$word"
    ((i++))
# first read from the file second sub process
done < <(grep d /usr/share/dict/words)

echo "found $i words"
