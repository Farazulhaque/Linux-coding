choice="yes"
while [ ${choice,,} = "yes" ];
do
        echo -n "Can I ask you a question? "
        read choice
        if [ ${choice,,} = "yes" ];
        then
                echo -n "How's the weather? "
                read weather
                if [ ${weather,,} = "rainy" ];
                then
                        echo "It is god for the crops"
		elif [ ${weather,,} = "cold" ];
		then
			echo "Get your jacket"    
		elif [ ${weather,,} = "hot" ];
		then
			echo "Good day for the beach"
		elif [ ${weather,,} = "perfect" ];
		then
			echo "Ahhh, perfection"
		else
			echo "$weather, eh? That's fascinating"
		fi
        
	elif [ ${choice,,} = "no" ];
	then
		choice="no"
	else
		choice="yes"	
	fi
done



