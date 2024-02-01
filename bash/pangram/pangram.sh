#!/usr/bin/env bash

alphabets="abcdefghijklmnopqrstuvwxyz"
main () {
    input=$(echo "$@" | tr '[:upper:]' '[:lower:]')
    result="true"
    for ((i=0; i<${#alphabets}; i++)); do
        if [[ "$input" != *"${alphabets:i:1}"* ]]; then
            result="false"
            break
        fi
    done
    echo $result
}

main "$@"
