#!/bin/bash

set -e

FILE=$1

while read dimensions filename x_pos y_pos; do
    if [[ "$x_pos" =~ ^(null|center)$ ]]; then
        x_pos=""
    fi
    if [[ "$y_pos" =~ ^(null|center)$ ]]; then
        y_pos=""
    fi
    gravity=${y_pos}${x_pos}
    if [[ "$gravity" != "" ]]; then
        echo $filename $gravity
    else
        echo $filename "center"
    fi
done
