#!/bin/bash

echo "PROGRAM MENU"
echo "1 - Summation of 1 to n inclusive"
echo -e "2 - n! is factorial?\n"
echo -e "# - Exit Program\n"
read -p "Enter Selection: " choice
echo

case $choice in
"1")
    read -p "Enter First number between 1 and 10: " num
    if [ $num -gt 0 ] && [ $num -le 10 ]
    then
        i=1
        sum=0
        for ((i; i <= $num; i++)); do
            sum=$((sum + i))
        done
        echo "1 to $num summation = $sum"
    else
        echo "Invalid input. Input must be between 1 and 11."
    fi
    ;; #break statmnent
"2")
    read -p "Enter First number between 1 and 10: " num
    if [ $num -gt 0 ] && [ $num -le 10 ]
    then
        i=1
        fact=1
        for ((i; i <= $num; i++)); do
            fact=$((fact * i))
        done
        echo "$num factorial = $fact"
    else
        echo "Invalid input. Input must be between 1 and 11."
    fi
    ;; #break statmnent
"#") ;;
esac
