#!/bin/bash

SCRIPTDIR=$(dirname $0)
PKGDIR=$SCRIPTDIR/../my_packages

for d in $PKGDIR/*
do
    echo $(basename $d): $(grep VERSION "$d/$(basename $d).mk" | head -n1 | cut -f2 -d=)
done
