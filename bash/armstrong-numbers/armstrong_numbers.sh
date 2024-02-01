#!/usr/bin/env bash

main () {
    input=$@
    factor=${#input}
    result=$((0))
    for ((i=0; i<$factor; i++)); do
        digit=${input:i:1}
        number=$((digit))
        power=$((number ** $factor))
        result=$((result + $power))
    done
    if [ $input -eq $result ]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
