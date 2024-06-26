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
PASS007='fly1ngf15h-2VlMzEwZ-z17h3r'
PASS008='n1gh7cr4wl3r-mJlM-c0n1f3r'
PASS009='d1n054ur-zMwZ-m071v4710n'
PASS010='r4c3r-GY0M2I1M-0r4ng3'
PASS011='3m3r4ld-DU0Y-g3n3r4710n'




# FLAG name selection
PASS="PASS${LVL2ZIP}"

# 7z encryption with header (no listing possible)
7zz a -t7z -p${!PASS} -mhe $DESTPATH $LVL2ZIP

