!/bin/bash

clear

for i in {0..7}; do
	COLOR_VALUE="\033[1;3"$i"m Hello World"
	echo -e $COLOR_VALUE
done
for i in {0..7}; do
	COLOR_VALUE="\033[1;3"$i"m Hello World"
	echo -e $COLOR_VALUE
done
for i in {0..7}; do
	COLOR_VALUE="\033[1;3"$i"m Hello World"
	echo -e $COLOR_VALUE
done
for i in {0..7}; do
	COLOR_VALUE="\033[1;3"$i"m Hello World"
	echo -e $COLOR_VALUE
done

read -p " Enter a color of the Rainbow: " color

if [ "$color" == "black" ]; then
	COLOR_VALUE="\033[1;30m Hello World"
elif [ "$color" == "red" ]; then
	COLOR_VALUE="\033[1;31m Hello World"
elif [ "$color" == "green" ]; then
	COLOR_VALUE="\033[1;32m Hello World"
elif [ "$color" == "yellow" ]; then
	COLOR_VALUE="\033[1;33m Hello World"
elif [ "$color" == "blue" ]; then
	COLOR_VALUE="\033[1;34m Hello World"
elif [ "$color" == "purple" ]; then
	COLOR_VALUE="\033[1;35m Hello World"
elif [ "$color" == "cyan" ]; then
	COLOR_VALUE="\033[1;36m Hello World"
elif [ "$color" == "white" ]; then
	COLOR_VALUE="\033[1;37m Hello World"

fi
for i in {0..7}; do
	echo -e $COLOR_VALUE
done
