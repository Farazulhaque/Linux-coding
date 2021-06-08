#!/bin/sh

echo -n ">>"
read string
if [ -z "$string" ];then 
  echo "Where is your input?"
else
  echo "You entered: " $string
fi
