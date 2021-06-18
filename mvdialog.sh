#! /bin/sh

# echo used to print 
# -n is used for same line input
echo -n "Enter you name (first last): "
# store the user input in first and last variable name
read first last
# print the user input
echo "Data read:" $first $last
# start printing tha=e data
cat << ENDDATA
Hi, $first ${last}.
Mr. $last, bye-bye!
ENDDATA
# End the data

