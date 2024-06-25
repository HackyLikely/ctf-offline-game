#!/usr/bin/bash

THISLVL='008'
cd $THISLVL

# the key.7z archive is listable, filename is the key
KEY=$(7zz l key.7z | tr ' ' '\n' | strings -n30)

# Print to stdout the content of secret.7z extraction
7zz x -so -p${KEY} secret.7z
