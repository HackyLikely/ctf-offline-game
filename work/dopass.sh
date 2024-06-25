#!/usr/bin/bash

# Function to generate leetspeak variations of a word
function leetspeak {
    local word="$1"
    local leet_word=""

    for (( i=0; i<${#word}; i++ )); do
        char="${word:i:1}"
        case "$char" in
            a) leet_word+="4" ;;
            e) leet_word+="3" ;;
            i) leet_word+="1" ;;
            o) leet_word+="0" ;;
            s) leet_word+="5" ;;
            t) leet_word+="7" ;;
            *) leet_word+="$char" ;;
        esac
    done

    echo "$leet_word"
}

# Online help
noun=$(curl -s https://random-word-form.herokuapp.com/random/noun | grep -Eo "[a-z]+")
animal=$(curl -s https://random-word-form.herokuapp.com/random/animal | grep -Eo "[a-z]+")

# Offline dust
dust=$(head -c 10 /dev/random | od -An -t x1 | tr -d ' ' | base64)

# nosense message
msg=$animal-${dust:1:$(shuf -i 4-8 -n 1)}-$noun
# echo $msg

# leetspeak nosense message
leetspeak $msg