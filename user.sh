#!/bin/bash

echo -n "Enter username: "
read username

currentuser=$(whoami)

if [ $username = $currentuser ];
then
	echo "Welcome $username"
else
	echo "Incorrect Username"
fi
