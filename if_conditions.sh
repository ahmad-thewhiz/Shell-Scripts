read -p "Enter a number" num1
if [[$(($num1%2)) -eq 0 ]]
	then
		echo "Even Number"
	else
		echo "Odd Number"
	fi
	