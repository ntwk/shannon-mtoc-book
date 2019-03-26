#!/bin/bash

set -e

if [ $# -lt 2 ]; then
    echo 1>&2 "usage: $0 djvufile outputdir"
    exit 2
fi

DJVUFILE="$1"
OUTPUTDIR="$2"
NPAGES=$(djvused -e n "$DJVUFILE")

ddjvu -format=pbm -eachpage -1 "$DJVUFILE" "$OUTPUTDIR"/page_%0${#NPAGES}d.pbm
