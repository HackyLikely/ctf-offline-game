#!/usr/bin/bash

THISLVL='010'
NEXTPASS='3m3r4ld-DU0Y-g3n3r4710n'

mkdir $THISLVL
cd $THISLVL

# ----------------------------------------------------------------
# Tree of directories and files
# Only one is the correct file with the flag
# ----------------------------------------------------------------

function gen_files {
    # create some files suffix
    SUFF="$(shuf -i 1000-9999 -n$(shuf -i 5-10 -n1))"
    # create files
    for s in $SUFF; do
        fake_ctf="CTF{"
        fake_ctf+="$(head /dev/urandom | base64 | head -c $(shuf -i 4-10 -n1))"
        fake_ctf+="-"
        fake_ctf+="$(head /dev/urandom | base64 | head -c $(shuf -i 4-10 -n1))"
        fake_ctf+="-"
        fake_ctf+="$(head /dev/urandom | base64 | head -c $(shuf -i 4-10 -n1))"
        fake_ctf+="}"
        echo -n $fake_ctf > file-$s
    done
}

function gen_dirs {
    # create some dirs suffix
    DIRSUFF="$(shuf -i 1000-9999 -n$(shuf -i 4-6 -n1))"
    # create dirs    
    for d in $DIRSUFF; do
        mkdir dir-$d
    done
}

function gen_stuff {
    local THIS_LEVEL=${1:-"0"}
    if [[ $THIS_LEVEL -lt 0 ]]; then
        # echo "Level $THIS_LEVEL return"
        return
    else
        echo "Level $THIS_LEVEL at $(basename $(pwd))"
        gen_files
        if [[ $THIS_LEVEL -eq 0 ]]; then
            return
        fi 
        gen_dirs
        for d in $(ls -d */); do
            cd $d   
            gen_stuff $((THIS_LEVEL-1))
            cd ..
        done        
    fi
}

# Generate the tree of stuff
mkdir dir-1337

cd dir-1337
gen_stuff 3
cd ..


# Workfile with next password
WORKFILE='file-5424'
echo "CTF{$NEXTPASS}" > $WORKFILE

# Move WORKFILE file down
FPATH=$(ls -R dir-1337 | grep -o "dir-.*/dir-.*/dir-.*/" | uniq | head -15 | tail -1)
# echo $FPATH
mv $WORKFILE $FPATH


# make some interes readme with hint
echo "The true flag is in a file that is 29 bytes in size and has the newline character in." > readme