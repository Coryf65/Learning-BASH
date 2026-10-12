#!/usr/bin/env bash

printf '\e[41mFork Bombs are dangerous\e[0m \033[1mdo not ever run these...\e[0m\n'
echo
echo "this will show what they look like and break them apart to learn about them"
echo
echo classic exmaple...
echo ":(){ :|:& };:"
echo
printf 'is like saying\n
my_function() {
    my_function | my_function &
}

my_function\n'
