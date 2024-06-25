#!/usr/bin/bash

THISLVL='005'
cd $THISLVL

# alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
rot13() {
    echo "$1" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}

#rot13 "$(cat solveme)" 
rot13 "$(cat solveme)" | grep -o "CTF{.*}"