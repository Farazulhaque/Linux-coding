# To start the loop
answer="y"
# Initialize sum variable as 0
sum=0
# Loop until answer not equal to 'n'
while [ $answer != "n" ]
do
    # Enter item name and store the value in item variable
    echo -n "Enter item name: "
    read item
    
    # Enter quantity and store the value in quantity
    echo -n "Enter quantity: "
    read quantity

    # Add quantity to sum
    sum=$((sum+quantity))

    # Ask user if you want to enter again
    echo -n "Do you want to buy another item?(y/n) "
    read answer

    # Print new line
    echo
done

# Print Total
echo "Total items: $sum"

