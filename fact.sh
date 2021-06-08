#!/bin/bash

if [ $# -eq 1 ]	#check for number of arguments
then
	num=$1
	if [ $num -gt 0 ] && [ $num -lt 21 ];	#check for number between 1-21
	then
		fact=1
		while [ $num -gt 1 ]
		do
			fact=$((fact * num))
			num=$((num - 1))
		done
		echo $fact			
	else
		echo "Usage: ./fact.sh 1-21"
	fi
else
	echo "Usage: ./fact.sh number"
fi




