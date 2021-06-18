if [ $# -eq 4 ];
then
	echo 'Command Executed: ' $0
	echo 'First input: ' $1
	echo 'Second input: ' $2
	echo 'Third input: ' $3
	echo 'Fourth input: ' $4
    	echo 'Process id: ' pidof $0
    	echo 'Total number of input parameters: ' $#
else
    	echo 'Usage: ./scriptname.sh first second third fourth'
fi

