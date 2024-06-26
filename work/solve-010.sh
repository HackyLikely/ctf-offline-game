#!/usr/bin/bash

THISLVL='010'
cd $THISLVL

FNAME=$(find "dir-1337" -type f -size 29c -exec wc -l {} \; | sort | tail -1 | cut -d ' ' -f 2)
cat $FNAME
