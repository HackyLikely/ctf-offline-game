#!/usr/bin/bash

THISLVL='000'
NEXTPASS='blowin-in-the-w1nd'

mkdir $THISLVL
cd $THISLVL

WORKFILE="hello.txt"
cat << EOF > $WORKFILE
I'm a simple txt file, any editor can read me.
You may ask how to find the flag?
The answer, my friend, is blowin' in the wind.
The answer is CTF{$NEXTPASS}
EOF

