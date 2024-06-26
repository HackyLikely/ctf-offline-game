#!/usr/bin/bash

THISLVL='011'
cd $THISLVL

BITSTR=$(sed -e 's/zero/0/g' -e 's/one/1/g' solveme)
BITSTR_BC=$(echo $BITSTR | sed -E 's/(.{8})/\1;/g')
BC_CMD=$(echo "obase=16;ibase=2;${BITSTR_BC}")
HSTR=$(echo $BC_CMD | bc | tr '\n' ' ' | sed -E 's/ (.) / 0\1 /g')
echo $HSTR | xxd -ps -r | grep -o "CTF{.*}"

