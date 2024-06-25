#!/usr/bin/bash

THISLVL='005'
NEXTPASS='dr4g0n-zhlMWU2-1n5cr1p710n'

mkdir $THISLVL
cd $THISLVL

WORKFILE="solveme"

# alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
rot13() {
    echo "$1" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}



# Clear message
MSG_CLEAR=$(cat << END_HEREDOC
ZhlMWU2 whispers in silent code,
1n5cr1p710n etches lines in ode,
Dr4g0n scales the walls of node.

Fire-breathing scripts dance in binary,
Where bytes weave tales encrypt diary,

Unveiling mysteries, in algorithms prime.
In the realm of secrets CTF{$NEXTPASS}
END_HEREDOC
)

# this will echo variable with new lines intact
# echo "$MSG_CLEAR"
# this will echo variable without new lines (changed to space character)
# echo $MSG_CLEAR

rot13 "$MSG_CLEAR" > $WORKFILE