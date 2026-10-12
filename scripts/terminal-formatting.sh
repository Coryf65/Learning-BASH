#!/usr/bin/env bash

echo we can print formatted text to the terminal
printf 'not bold\n'

echo

printf '\e[1mBold\e[0m\n'

echo
echo we are actually sending this...
printf '\e[1mBold\e[0m\n' | xxd

echo 
printf '\e[31mRed\e[0m\n'
printf '\e[32mGreen\e[0m\n'
printf '\e[33mYellow\e[0m\n'
printf '\e[34mBlue\e[0m\n'
printf '\e[35mMagenta\e[0m\n'
echo
printf '\e[41mHighlighted Red\e[0m\n'
printf '\e[42mHighlighted Green\e[0m\n'
printf '\e[43mHighlighted Yellow\e[0m\n'
printf '\e[44mHighlighted Blue\e[0m\n'
printf '\e[45mHighlighted Magenta\e[0m\n'
echo