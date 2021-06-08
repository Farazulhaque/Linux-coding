read -s -p "Enter Password: " password
length=${#password}
regex=[[ $length -ge 8 && "$password" == *[A-Z]* && "$password" == *[a-z]* && "$password" == *[0-9]* ]]
validate(){
	if [[ $password =~ $regex ]];then
		echo "Password change successful"
	else
		echo "Password change not successful"
	fi
}

validate
