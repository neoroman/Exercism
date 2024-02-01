#!/usr/bin/env bash

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

main "$@"
