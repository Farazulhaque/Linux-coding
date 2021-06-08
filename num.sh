#!/bin/bash

numbers=(35 15 25 5 45 65 55 75)
sum=0
max=${numbers[0]}
min=${numbers[0]}
for num in "${numbers[@]}"
do
	sum=$(($sum + $num))
	if [ $max -le $num ];then
		max=$num
	fi
	if [ $min -ge $num ];then
		min=$num
	fi
	
done
echo "Sum: $sum"
echo "Max: $max"
echo "Min: $min"


