#!/usr/bin/env bash

echo showing how to control the cursor

# save the cursors position
printf '\e7'

# jump 
printf '\e[20;21H'

# print text
printf 'Hello World'

# restore the cursors position
printf '\e8'