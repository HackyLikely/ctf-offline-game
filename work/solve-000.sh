#!/usr/bin/bash

THISLVL='000'
cd $THISLVL

cat hello.txt | grep -o "CTF{.*}"

