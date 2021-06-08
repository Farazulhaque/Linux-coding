#!/bin/bash

choice="no"
while [ "$choice" != "yes" ];
do
	echo -n -e "\nEnter a new user name: "
	read username
	echo -n  "Enter a number between 667 to 687 as UID: "
	read uid
	echo -e "\nIs the following information correct?"
	echo -e "\tUser Name: $username"
	echo -e "\tThe entered UID is: $uid"
	echo -n -e "Enter \"yes\" if the information is correct: "
	read choice
done
useradd $username
usermod -u $uid $username
userdetails=$(getent passwd "$username")
echo -e "\n"
echo "$userdetails"

