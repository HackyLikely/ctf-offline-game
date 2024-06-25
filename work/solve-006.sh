#!/usr/bin/bash

THISLVL='006'
cd $THISLVL

base64 -d solveme | grep -o "CTF{.*}"
