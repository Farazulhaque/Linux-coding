filename1=$1
filename2=$2

echo "The character lengths are requested for $filename1 and $filename2"
wc -c $filename1 
wc -c $filename2 
