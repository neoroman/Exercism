#!/usr/bin/env bash

main () {
    string1="$1"
    string2="$2"
    if [ $# -lt 2 ]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    elif [ ${#string1} -ne ${#string2} ]; then
        echo "strands must be of equal length"
        exit 2
    fi
    result=$((0))
    for ((i=0; i<${#string1}; i++)); do
        if [[ "${string1:i:1}" != "${string2:i:1}" ]]; then
            result=$((result + 1))
        fi
    done
    echo $result
}

main "$@"
