#!/usr/bin/env bash

# a way to process indexed arrays
process-indexed() {
    local arguments=("$@")
    echo "found ${#arguments[@]} arguments"

    local IFS=,
    echo "${arguments[*]}"
}

# a way to de-dupe an array using an associative array
process-associative() {
    local arguments=("$@")
    echo "found ${#arguments[@]} total arguments"

    declare -A unique
    local item
    for item in "${arguments[@]}"; do
        unique[$item]=1
    done

    echo "found ${#unique[@]} unique arguments"
}

# a way to process commands passed as arguments
process-commands() {
    local arguments=("$@")
    echo "found ${#arguments[@]} total arguments"

    local item
    for item; do
        echo "running command: $item"
        "$item" # hmmm, this will execute the command passed as an argument
    done
}

cmd=$1
echo "script called with arguments: $*"
shift
echo "script shifted to arguments: $*"

case "$cmd" in
    indexed)
        process-indexed "$@"
        ;;
    associative)
        process-associative "$@"
        ;;
    commands)
        process-commands "$@"
        ;;
    *)
        echo "unknown command: $cmd" >&2
        exit 1
        ;;
esac
