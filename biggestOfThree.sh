if [ $# -ne 3 ]
then
    echo "$0: number1 number2 number3 are not given">&2
    exit 1
fi
n1=$1 #missing argument $1
n2=$2
n3=$3
if [ $n1 -gt $n2 ]  && [ $n1 -gt $n3 ] #& instead of &&
then
    echo "$n1 is Biggest number" #missing "
elif [ $n2 -gt $n1 ]  && [ $n2 -gt $n3 ]
then
    echo "$n2 is Biggest number"
elif [ $n3 -gt $n1 ]  && [ $n3 -gt $n2 ] #missing t in -g
then 
    echo "$n3 is Biggest number" #$4 instead of $3
elif [ $n1 -eq $2 ] && [ $1 -eq $3 ] && [ $2 -eq $3 ]
then
    echo  "All three numbers are equal"
else
    echo "I can not figure out which number is bigger"
fi #missing closing if
