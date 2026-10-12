#!/usr/bin/env bash

echo showing how the clear command works....
echo we can write a bunch of text to the screen
echo then run out custom clear and it writes the same escape sequence to clear this screen
echo clear | xxd
echo waiting 2 seconds...
sleep 2
echo clearing now....
printf '\e[3J\eH\e[2J'