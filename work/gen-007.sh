#!/usr/bin/bash

THISLVL='007'
NEXTPASS='n1gh7cr4wl3r-mJlM-c0n1f3r'

mkdir $THISLVL
cd $THISLVL

WORKFILE="solveme"

# Clear message
MSG_CLEAR=$(cat << END_HEREDOC
Welcome to the jungle we've got fun and games
We got everything you want honey, we know the names
We are the CTF{$NEXTPASS} whatever you may need
If you got the money, honey we got your disease ...
END_HEREDOC
)

# Sobstitute spaces with dashes for readability in solution
MSG_CLEAR2=$(echo $MSG_CLEAR | tr ' ' '-')

# to create a file as "data"
printf "\x00" > $WORKFILE

# Puts readable chars between random non-printable data
while IFS= read -r -n1 c; do
    echo -n $c >> $WORKFILE
    LIM=$(shuf -i20-40 -n1) # random space between chars
    for ((i=0; i<$LIM; i++ )); do
        printf "\x0$(($RANDOM % 9))" >> $WORKFILE
    done
done <<< "$MSG_CLEAR2"
