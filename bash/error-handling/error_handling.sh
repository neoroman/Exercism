#!/usr/bin/env bash

main () {
    if [ $# -gt 1 -o $# -lt 1 ]; then
        echo "Usage: error_handling.sh <person>"
        exit 1
    fi
    for x in "$@"; do
        echo "Hello, $x"
        exit
    done
}

main "$@"
