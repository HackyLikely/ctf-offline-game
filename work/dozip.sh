#!/usr/bin/bash

[[ -z $@ ]] && echo "... level?" && exit

LVL2ZIP="$1"
DESTPATH="../levels/${LVL2ZIP}.7z"

# FLAGs list
PASS000='qwerty-1234'
PASS001='blowin-in-the-w1nd'
PASS002='2the-next-lvl'
PASS003='hidd-enS3-CRET-flag'
PASS004='Well-done-MyFR-13ND'
PASS005='Hold-G10w-Warm-PART'
PASS006='dr4g0n-zhlMWU2-1n5cr1p710n'



# FLAG name selection
PASS="PASS${LVL2ZIP}"

# 7z encryption with header (no listing possible)
7zz a -t7z -p${!PASS} -mhe $DESTPATH $LVL2ZIP

