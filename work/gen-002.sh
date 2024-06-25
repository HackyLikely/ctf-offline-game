#!/usr/bin/bash

THISLVL='002'
NEXTPASS='hidd-enS3-CRET-flag'

mkdir $THISLVL
cd $THISLVL

WORKFILE=".hello"
cat << EOF > $WORKFILE
Hidden file for CTF{$NEXTPASS}
EOF