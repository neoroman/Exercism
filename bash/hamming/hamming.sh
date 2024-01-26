#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
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
#
# call main with all of the positional arguments
main "$@"
