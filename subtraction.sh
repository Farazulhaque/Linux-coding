#!/bin/bash

read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2

diff=$(( num1 - num2 ))
echo "Difference = $diff" 
