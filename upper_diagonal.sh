echo "Enter row"
read row

echo "Enter column"
read col

declare -A a
upper_diagonal_sum=0
strict_upper_diagonal_sum=0

echo -e "Enter First Matrix:\n"
for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		read -p "Enter element for [$i,$j]: " a[$i$j]
	done
done
	
echo -e "First Matrix is:\n"
for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		echo -ne "${a[$i$j]} " 
	done
	echo -e "\n"  
done

for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		if [ $i -le $j ]; then
			upper_diagonal_sum=$((upper_diagonal_sum + a[$i$j]))
		fi
		
		if [ $i -lt $j ]; then
			strict_upper_diagonal_sum=$((strict_upper_diagonal_sum + a[$i$j]))
		fi
	done
done

echo "Sum of the upper diagonal elements is: $upper_diagonal_sum"
echo "Sum of the strict upper diagonal elements is: $strict_upper_diagonal_sum"
