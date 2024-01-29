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

# call main with all of the positional arguments
main "$@"
