echo "Welcome to our store menu:"
echo "1. Enter your information"
echo "2. Enter your order"
echo "3. Print the receipt"
echo "4. Place new order"
echo "5. Exit"
echo -n "Please enter your selection: "
read choice

s=0
m=0
l=0

while [ $choice -ne 5 ]
do
	if [ $choice -eq 1 ]
	then
		echo -n "Enter your first name: "
		read fname
		echo -n "Enter your last name: "
		read lname
	elif [ $choice -eq 2 ]
	then
		echo -n "Number of small size coffee? "
		read s
		echo -n "Number of medium size coffee? "
		read m
		echo -n "Number of large size coffee? "
		read l
	elif [ $choice -eq 3 ]
	then
		echo "Welcome to our store menu:"
		echo "Customer name: $fname $lname"
		if [ $s -gt 0 ]
		then
			echo "$s Small Coffee"
		fi
		if [ $m -gt 0 ]
		then
			echo "$m Medium Coffee"
		fi
		if [ $l -gt 0 ]
		then
			echo "$l Large Coffee"
		fi
		total=$(($s * 2 + $m * 3 + $l * 4))
		echo "Subtotal: $"$total
	elif [ $choice -eq 4 ]
	then
		s=0
		m=0
		l=0
		echo "Now you can place new order."
	fi
	echo -n "Please enter your selection: "
	read choice
done
