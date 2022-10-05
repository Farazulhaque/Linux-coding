#! /bin/bash

curve(){	
	echo "Curved Grades: "
	index=0
	for i in "${arr[@]}"; do
		let "arr[$index] = $i + $1"
		echo "grades[$index] = " $((arr[index]))
		index=$((index + 1))
	done
}

if [ $# -eq 1 ]; then
	incr=$1
	shift
	index=0
	for ((i=0; i < 5; i++));do
		read -p "Enter QUIZ #$((index + 1)): " arr[$i]
		index=$((index + 1))
	done
	curve $incr ${arr[*]}
else 
	echo "usage: ./rec05.sh <curve amount>"
fi