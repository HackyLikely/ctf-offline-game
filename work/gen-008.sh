#!/usr/bin/bash

THISLVL='008'
NEXTPASS='d1n054ur-zMwZ-m071v4710n'

mkdir $THISLVL
cd $THISLVL

WORKFILE="yessa"

# Workfile with next password
echo "CTF{$NEXTPASS}" > $WORKFILE

# Zip the file with a strong password
STRONGPASS='8b7a0a07b70d938b81cf217e64100a6a2bd2aecf'
7zz a -t7z -p${STRONGPASS} -mhe secret.7z $WORKFILE
rm $WORKFILE

# Empty file with the strong password as filename
echo -n "" > $STRONGPASS

# Zip the file with another strong password, but listing allowed
STRONGPASS2='478671ce0d37b77f26106f670da68aeb0bb0a22a'
7zz a -t7z -p${STRONGPASS2} key.7z $STRONGPASS
rm $STRONGPASS