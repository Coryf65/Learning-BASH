#!/usr/bin/env bash

# IFS stands for Internal Field Separator
# It is used by the shell to determine how to split a string into words.
# The default value is space, tab, and newline.

# Example usage:
# Suppose we have a string with comma-separated values
csv="apple,banana,cherry"

# By default, IFS is space, tab, and newline, so this will not split correctly
for fruit in $csv; do
    echo "$fruit"
done

# Change IFS to comma to split correctly
IFS=',' 
for fruit in $csv; do
    echo "$fruit"
done

# Reset IFS to default
IFS=$' \t\n'
# or use unset
unset IFS
