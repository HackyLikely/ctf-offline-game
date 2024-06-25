#!/usr/bin/bash

THISLVL='001'
cd $THISLVL

cat hello | grep -o "CTF{.*}"

