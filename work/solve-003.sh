#!/usr/bin/bash

THISLVL='003'
cd $THISLVL

xxd -r -ps solveme | grep -o "CTF{.*}"

# https://codebeautify.org/ascii-to-text