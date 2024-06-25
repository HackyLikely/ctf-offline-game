#!/usr/bin/bash

THISLVL='001'
NEXTPASS='2the-next-lvl'

mkdir $THISLVL
cd $THISLVL

WORKFILE="hello"
cat << EOF > $WORKFILE
Even without extension a file can be opened.
Go, my friend, CTF{$NEXTPASS}
EOF

