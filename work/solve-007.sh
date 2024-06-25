#!/usr/bin/bash

THISLVL='007'
cd $THISLVL

strings -n1 solveme | tr -d '\n' | grep -o "CTF{.*}"
