#!/usr/bin/env bash

my_func() {
    echo "[DEBUG] running: $BASH_COMMAND"
}

trap my_func debug

echo script starting
echo ...
echo script done
exit 1
