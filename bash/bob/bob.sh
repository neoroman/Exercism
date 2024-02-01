#!/usr/bin/env bash

main () {
    input="$@"
    input="${input%"${input##*[![:space:]]}"}"
    uppercase_input=$(echo "$input" | tr '[:lower:]' '[:upper:]')
    alphabet_only=$(echo "$input" | tr -cd '[:alpha:]')
    remove_whitespace=$(echo "$input" | tr -d ' ')

    if [[ "$input" == "$uppercase_input" && -n "$alphabet_only" ]]; then
        if [[ "${input:${#input}-1:1}" == "?" ]]; then
            echo "Calm down, I know what I'm doing!"
        else
            echo "Whoa, chill out!"
        fi
    elif [[ "${input:$maxLength-1:1}" == "?" ]]; then
        echo "Sure."
    elif [[ "$remove_whitespace" == "" ]]; then
        echo "Fine. Be that way!"
    else
        echo "Whatever."
    fi
}

main "$@"
