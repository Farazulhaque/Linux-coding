#!/bin/bash
CHOICE=7
until [ $CHOICE -eq 4 ]
do
    clear
    echo Please seclect a menu item
    echo
    echo "1) Display your current directory"
    echo "2) Display your home directory"
    echo "3) List the contents of your homme directory"
    echo "4) Exit the program"
    echo 
    read CHOICE
    case $CHOICE in
        1) pwd;;
        2) echo $HOME;;
        3) ls;;
        4) echo "Have a good day!";;
        *) echo You made an invalid selection;;
    esac
    echo "Press enter to continue"
    read Enter
done
