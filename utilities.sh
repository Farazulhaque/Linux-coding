echo "Type one of the following:"
echo " 1 - whoami"
echo " 2 - df"
echo " 3 - date"
echo " 4 - cal"
echo ""
echo -n "===> "
read choice

if [ $choice -eq 1 ];
then
	whoami
elif [ $choice -eq 2 ];
then
	df
elif [ $choice -eq 3 ];
then 
	date
elif [ $choice -eq 4 ];
then
	cal
else
	echo "You make an invalid selection. Exiting."
fi
