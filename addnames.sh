#!/bin/bash

if [ $# -eq 2 ] # checking for correct number of arguments
then
	filename="$1"
	name="$2"
	flag=0
	today=$(date "+%d-%m-%Y")
	newfilename=$today$filename

	for i in *; do
		if [ "$i" = "$filename" ]
		then
			flag=1
		fi
	done

	if [ $flag -eq 0 ]
	then
		echo "File not found"
	else
		if grep -Fxq "$name" $filename
		then
			echo "Name already existed"
		else
			echo $name >> $filename	
			mv $filename $newfilename
		fi	
	fi

else
	echo "Usage: ./addnames company.txt name"
fi

