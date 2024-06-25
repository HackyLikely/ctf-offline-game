#!/usr/bin/bash

THISLVL='004'
cd $THISLVL

TEMP=$(cat solveme | sed -E "s/(.{8})/\1;/g")
# echo $TEMP
MSG=$(echo "obase=16;ibase=2;$TEMP" | bc | tr  '\n' ' ' | xxd -r -ps)
# echo $MSG
echo $MSG | grep -o "CTF{.*}"

