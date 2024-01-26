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
factors="3 5 7"
main () {
    result=""
    inputString="$@"
    for factor in $factors; do
        input=$((inputString))
        number=$((factor))
        leftover=$((input % number))
        case $number in
            3)
                if [ $leftover -eq 0 ]; then
                    result=$result"Pling"
                fi
                ;;
            5)
                if [ $leftover -eq 0 ]; then
                    result=$result"Plang"
                fi
                ;;
            7)
                if [ $leftover -eq 0 ]; then
                    result=$result"Plong"
                fi
                ;;
        esac
    done
    if test -n "$result"; then
        echo $result
        exit
    fi
    echo "$inputString"
}
#
# call main with all of the positional arguments
main "$@"
