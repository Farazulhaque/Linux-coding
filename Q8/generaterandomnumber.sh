counter=0
while [ $counter != 500000 ]; do
    echo $RANDOM >>numbers
    counter=$((counter + 1))
done
