#!/usr/bin/env bash

s=$1

case "$s" in
    cory)
        echo "hey cory"
        ;; # breaks
    buddy)
        echo "I am not your buddy, pal"
        ;; # breaks
    pal)
        echo "I am not your pal, guy"
        ;; # breaks
    dude|guy)
        echo "I am not your dude, guy"
        ;; # breaks
    *)
        echo "I don't know you"
        ;; # breaks
esac