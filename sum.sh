echo -n "How many numbers you want to add? "
read n

i=1
sum=0

echo "Enter Numbers"
while [ $i -le $n ]
do
	read num
	sum=$((sum + num))
	i=$((i + 1))
done

echo "Sum: $sum"
