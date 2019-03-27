#!/bin/bash

set -e

if [ $# -lt 1 ]; then
    echo 1>&2 "usage: $0 outputdir"
    exit 2
fi

OUTPUTDIR="$1"
EXTENT=1600x2400

while read filename gravity; do
    mogrify -gravity $gravity -extent $EXTENT "$OUTPUTDIR"/$filename
done
