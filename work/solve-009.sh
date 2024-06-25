#!/usr/bin/bash

THISLVL='009'
cd $THISLVL

# get the key
KEY=$(md5sum readme | cut -d " " -f 1)

# print to stdout the content of secret.7z extraction
7zz x -so -p${KEY} secret.7z
