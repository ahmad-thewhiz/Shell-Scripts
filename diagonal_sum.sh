echo "Enter row"
read row

echo "Enter column"
read col

declare -A a
declare -A b

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


sum_diagonal=0
for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))	
	do
		if [ $i -eq $j ]; then
			sum_diagonal=$((sum_diagonal + a[$i$j]))
		fi
	done
done

echo "Sum of the diagonal elements of the first matrix is: $sum_diagonal"

