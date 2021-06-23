echo "AU: display list of users currently logged in the system."
echo "DA: Display long format including hidden files in current directory."
echo "CF: Create an empty file based on file name given by the user."
echo "CD: Create a directory based on the directory name given by the user."
read choice
if [ $choice == "AU" ];then
		AU=$(who)
		echo $AU
elif [ $choice == "DA" ];then
		DA=$(ls -l -a)
		echo $DA
elif [ $choice == "CF" ]; then
		echo "Enter filename"
		read filename
		CF=$(touch $filename)
		echo $(ls)
elif [ $choice == "CD" ];then
		echo "Enter Directory name"
		read directoryname
		CD=$(mkdir $directoryname)
		echo $(ls)
fi

