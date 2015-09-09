#!/bin/bash

if [ $# -ne 1 ]
then
    exit
fi

ID=$1

docker run --rm -i -t -v `pwd`/output/:/tmp/output $ID
