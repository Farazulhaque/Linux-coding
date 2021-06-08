echo "Enter file name"
read fName
echo "Enter path name"
read pName
cd $pName
flag=0
for i in *; do
	if [ "$i" = "$fName" ]
	then
		echo "File is found"
		flag=1
	fi
done
if [ $flag -eq 0 ]
then
	echo "File is not found"
fi




