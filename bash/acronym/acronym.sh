#!/usr/bin/env bash

OLD_IFS=$IFS

main () {
    IFS=" -_*"
    result=""
    for x in $@; do
        result=$result"${x:0:1}"
    done
    final=$(echo "$result" | tr 'a-z' 'A-Z')
    echo "$final"
}

main "$@"
IFS=$OLD_IFS
