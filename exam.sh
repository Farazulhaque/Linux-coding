#!/bin/bash

if [ "$1" == "" ]
then
    echo "Error: no input. Please run with arguments."
    exit 2
fi

for w in "$@"
do
    if [ $# = 2 ]
    then
        echo $w
    elif [ $# = 3 ]
    then
        echo $w | tr '[a-z]' '[A-Z]'
    else
        echo "Sheridan College"
    fi
done
exit 0