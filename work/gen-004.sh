#!/usr/bin/bash

THISLVL='004'
NEXTPASS='Hold-G10w-Warm-PART'

mkdir $THISLVL
cd $THISLVL

WORKFILE="solveme"


hex2bin() {
    # loop on space separation (bytes separated by spaces)
    for x in $@; do
        # to upper 
        hex=$(echo $x | tr [:lower:] [:upper:])
        # just print
        printf "%8s\n" $(echo "obase=2;ibase=16;$hex" | bc) | tr ' ' '0'
    done
}

MSG="One byte is eight bits and the the flag is CTF{$NEXTPASS}"
MSGHEX=$(echo "$MSG" | xxd -ps | sed -E 's/(..)/\1 /g')
hex2bin $MSGHEX | tr -d '\n' > $WORKFILE