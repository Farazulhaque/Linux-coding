#!/bin/bash

if [[ "$#" -eq 0 ]];        #it checks whether there is no argument, here eq means equal to
then                        #if no argument is passed, then below statement will execute
    echo "Exiting"          #it prints Exiting
    exit 40                 #with exit code 40

elif [[ "$#" -gt 1 ]];      #it checks whether there is more than 1 argument, here gt means greater than
then                        #if more than one argument is passed then below statement will execute
    echo "Exiting"          #it prints Exiting
    exit 40                 #with exit code 40

else                        #if only one argument is passed then below stattement will execute
    read -p "Would you like to print the first argument?" choice
                            #it will print the message and store the output in variable coice
    if [[ "$choice" == "y" ]];  #checks whether the output is y or not
    then                    #if output is y then below statement will execute
        echo "Arg1: ${1}"   #it prints Arg1: with argument passed
    else                    #if output is other than y then this statement will execute
        echo "Bye"          #it prints Bye
        exit 10             #with exit code 10
    fi              #close the loop
fi          #close the loop