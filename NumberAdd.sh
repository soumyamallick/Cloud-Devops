declare -a arrSum
read -p "Enter numbers: " arrSum
sum=0

for i in ${arrSum[@]}
do
	    sum=`expr $sum + $i`
    done

    echo "Total is :$sum"
