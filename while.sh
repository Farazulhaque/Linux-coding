answer="y"
sum=0
while [ $answer != "n" ]
do
    echo -n "Enter item name: "
    read item
    
    echo -n "Enter quantity: "
    read quantity

    sum=$((sum+quantity))

    echo -n "Do you want to buy another item?(y/n) "
    read answer
    echo
done

echo "Total items: $sum"