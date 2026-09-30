#!/usr/bin/env bash
echo $'run this command:
cat /this-does-not-exist | tr , : | grep cory | cat | echo done\n
then check with
echo "${PIPESTATUS[*]}"'