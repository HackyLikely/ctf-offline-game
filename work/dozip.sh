#!/usr/bin/bash

[[ -z $@ ]] && echo "... level?" && exit

LVL2ZIP="$1"
DESTPATH="../levels/${LVL2ZIP}.7z"

# FLAGs list
PASS000='qwerty-1234'
PASS001='blowin-in-the-w1nd'

# FLAG name selection
PASS="PASS${LVL2ZIP}"

# 7z encryption with header (no listing possible)
7zz a -t7z -p${!PASS} -mhe $DESTPATH $LVL2ZIP

