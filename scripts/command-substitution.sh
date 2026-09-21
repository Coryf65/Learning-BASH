#!/usr/bin/env bash

# single qoutes mean the value is taken literally, no command substitution occurs
thing='whoami'

echo "thing is `$thing`"

# double quotes allow command substitution
thing="whoami"

echo backticks
echo "thing is `$thing`"
echo "thing is `thing`"

echo dollar-parens notation
echo "thing is $( $thing )"
echo $(echo $(whoami))
echo $(echo $(echo $(whoami)))
