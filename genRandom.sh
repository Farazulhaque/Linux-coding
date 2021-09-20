if [ $# -eq 3 ]
then
	counter=$1
	lower=$2
	upper=$3
	while [ $counter != 0 ]; do
	    range=$(($upper-$lower+1))
	    result=$RANDOM
	    let "result %= range"
	    echo  $(($result+$lower))
	    counter=$((counter - 1))
	done
else
	counter=0
	while [ $counter != 10 ]; do
	    lower=0
	    upper=9999
	    range=$(($upper-$lower+1))
	    result=$RANDOM
	    let "result %= range"
	    echo  $(($result+$lower))
	    counter=$((counter + 1))
	done
fi

