#!/usr/bin/bash

THISLVL='006'
NEXTPASS='fly1ngf15h-2VlMzEwZ-z17h3r'

mkdir $THISLVL
cd $THISLVL

WORKFILE="solveme"

# Clear message
MSG_CLEAR=$(cat << END_HEREDOC
In a quaint town surrounded by forests, 
young Flynn and his dog Max stumbled upon a Forbidden Grove. 
Ignoring warnings, they found a shimmering, 
winged fish buried there CTF{$NEXTPASS}.
It came to life, leading them on a magical flight over hidden wonders. 
As the day waned, the fish transformed into a glowing orb, 
leaving Flynn forever changed by the grove's enchantment.
END_HEREDOC
)

# this will echo variable with new lines intact
# echo "$MSG_CLEAR"
# this will echo variable without new lines (changed to space character)
# echo $MSG_CLEAR

echo "$MSG_CLEAR" | base64 > $WORKFILE