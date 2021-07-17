# make sure you go inside the loop for first time
answer=n

# display a blank line
echo

# for first time, or as long is the username is not correct keep looping
while [ $answer != "y" ]
do
    # get the user name
    echo -n "Enter a username: "
    read username

    # confirm the username is correct
    echo -n "Is the username \" $username \" correct? y or n: "
    read answer

    # make sure the user enters either yes or no
    while [ $answer != "y" ] && [ $answer != "n" ]
    do
        echo -n "Please enter y for yes or n for no: "
        read answer
    done
done

# display a blank line
echo

echo "Select one of the following option for $username
------------------
1. Add username
2. Change the password for a user
3. Show the corresponding line for that user in the /etc/passwd
4. Show the group membership for the user
5. Remove a user accounts, and the user’s the home directory
----------------- "
echo -n "Enter your choice: "   
read option

if [ $option -eq 1 ]
then
    # enter your code below to add the username
    echo -n "Enter the username:"
    read username
    useradd -m $username
    echo "$username has been created "


elif [ $option -eq 2 ]
then
    # enter your code below to change the password the username
    echo -n "Enter the username:"
    read username
    passwd $username


elif [ $option -eq 3 ]
then
    # show the line in passwd which start with the username
    echo -n "Enter the username:"
    read username
    grep "^$username" /etc/passwd

elif [ $option -eq 4 ]
then
    # enter your code below to show the group membership for the user
    echo -n "Enter the username:"
    read username
    groups $username

elif [ $option -eq 5 ]
then
    # remove the user account, and the user’s home directory
    echo -n "Enter the username:"
    read username
    userdel $username
    rm -r /home/$username
    echo "The user $username and /home/$username has been removed"


else
    echo "Wrong option.Exiting ..."

fi

# display a blank line
echo
