#!/usr/bin/bash

THISLVL='003'
NEXTPASS='Well-done-MyFR-13ND'

mkdir $THISLVL
cd $THISLVL

WORKFILE="solveme"
echo "Everything is a number CTF{$NEXTPASS}" | xxd -ps -i | sed -E 's/^ +//' | tr -d '\n' | sed -E 's/, +?/ /g' > $WORKFILE