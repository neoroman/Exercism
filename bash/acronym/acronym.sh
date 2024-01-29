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
OLD_IFS=$IFS
#
main () {
    IFS=" -_*"
    result=""
    for x in $@; do
        result=$result"${x:0:1}"
    done
    final=$(echo "$result" | tr 'a-z' 'A-Z')
    echo "$final"
}

# call main with all of the positional arguments
main "$@"
IFS=$OLD_IFS
