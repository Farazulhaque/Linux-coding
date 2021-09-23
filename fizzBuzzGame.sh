i=1
fizz=0
buzz=0
fizzbuzz=0
total=0
while [ $i -lt 100 ]
do 
    # Print the values
    echo "$i: "
    if [ `expr $i % 3` -eq 0 ] && [ `expr $i % 5` -eq 0 ]
    then 
    	echo "Fizz Buzz"
    	fizzbuzz=`expr $fizzbuzz + 1`
    elif [ `expr $i % 3` -eq 0 ]
    then
    	echo "Fizz"
    	fizz=`expr $fizz + 1`
    elif [ `expr $i % 5` -eq 0 ]
    then
    	echo "Buzz"
    	buzz=`expr $buzz + 1`
    fi
    
    # increment the value
    i=`expr $i + 1`
done

total=`expr $fizz + $buzz + $fizzbuzz`
echo "Fizz = $fizz"
echo "Buzz = $buzz"
echo "Fizz Buzz = $fizzbuzz"
echo "Total = $total"
