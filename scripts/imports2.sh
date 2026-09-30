#!/usr/bin/env bash

libdirs=./lib/greetings.sh

. "$libdirs" || exit 1

greet dude
greet guy
goodbye pal