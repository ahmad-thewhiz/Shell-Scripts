read -p "Enter number: " num1

if [[ $(($num1&1)) -eq 0 ]]
	then
		echo "Even"
	else
		echo "Odd"
	fi