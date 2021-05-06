#!/bin/bash

echo -n -e "\nDo you want to create a new user (Y or N): "
read choice

if [ "$choice" = "Y" ]; then
    echo -n -e "\nEnter a new user name: "
    read username
    echo -n "Enter a group name you want $username to join: "
    read groupname
    useradd $username
    groupadd $groupname
    usermod -a -G $groupname $username
    userdetails=$(getent passwd "$username")
    echo -e "\n$username user account created"
    echo -e "Ne user details are: "
    echo "$userdetails"
else
    if [ "$choice" = "N" ]; then
        echo -e "\nOk. See you later\n"
    else
        echo -e "\nError\n"
    fi
fi
