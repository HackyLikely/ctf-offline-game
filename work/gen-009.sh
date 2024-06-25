#!/usr/bin/bash

THISLVL='009'
NEXTPASS='r4c3r-GY0M2I1M-0r4ng3'

mkdir $THISLVL
cd $THISLVL

# ----------------------------------------------------------------
# Here we use the md5 checksum of a file 
# as password for the secret zipped archive 
# ----------------------------------------------------------------

# Hint on the filname
WORKFILE="use-md5-on-readme"

# Workfile with next password
echo "CTF{$NEXTPASS}" > $WORKFILE

# Prepare the readme
README=readme
echo "Push me and then just hash me"        > $README
echo "Till I can get my ... Satisfaction"  >> $README

# get the md5 hash
KEY=$(md5sum $README | cut -d " " -f 1)

# Zip the file with the key (listing allowed)
7zz a -t7z -p${KEY} secret.7z $WORKFILE
rm $WORKFILE