#!/bin/bash

if [ $# -eq 2 ]; then #checking for correct number of arguments
    filename="$1"
    name="$2"
    flag=0
    today=$(date "+%d-%m-%Y")
    newfilename=$today$filename

    for i in *; do #searching if filename exist or not
        if [ "$i" = "$filename" ]; then
            flag=1
        fi
    done
    if [ $flag -eq 0 ]; then
        echo "File not found"
    else
        if grep -Fxq "$name" $filename; then #search if name exist in file or not
            echo "Name already existed"
        else
            echo $name >>$filename    #add name to end of file
            mv $filename $newfilename #rename file
        fi
    fi

else
    echo "Usage: ./addnames company.txt name"
fi
