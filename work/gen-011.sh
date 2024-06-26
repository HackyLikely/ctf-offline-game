#!/usr/bin/bash

THISLVL='011'
NEXTPASS='0c70pu5-TBhZTE-1nc1rcl3'

mkdir $THISLVL
cd $THISLVL

# ----------------------------------------------------------------
# text -> ascii -> binary -> translate zero/one
# ----------------------------------------------------------------

# Workfile with next password
WORKFILE="solveme"

# clear text
MSG="CTF{$NEXTPASS}"

# hexadecimal plain uppercase
MSG_HEX="$(echo -n $MSG | xxd -ps -u)"

# insert commas for next bc processing
MSG_HEX_COMMA=$(echo -n $MSG_HEX | sed -E 's/(..)/\1;/g')

# prepare input to bc to trasform in binary
MSG_FOR_BC=$(echo "obase=2;ibase=16;$MSG_HEX_COMMA")

# get binary BYTES from bc
MSG_BIN=$(printf "%08d" $(echo $MSG_FOR_BC | bc))

# change symbols
echo $MSG_BIN | sed -e 's/0/zero/g' -e 's/1/one/g' > $WORKFILE
