#!/usr/bin/env bash

main () {
    for x in "$@"; do
        echo "One for $x, one for me."
        exit
    done
    echo "One for you, one for me."
}

main "$@"
