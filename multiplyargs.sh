#!/bin/bash

echo "Number of arguments is: $#"
# $# is used to get number of arguments passed
# $1 is used to get first argument
mul=$(($1*$#))
echo "Multiplication of first argument with number of argument is: $mul"

