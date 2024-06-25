#!/usr/bin/bash

THISLVL='002'
cd $THISLVL

cat .hello | grep -o "CTF{.*}"

