echo "Enter row"
read row

echo "Enter column"
read col

declare -A a
declare -A transpose

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
		transpose[$j$i]=${a[$i$j]}  # Transposing by swapping row and column indices
	done
done

echo -e "Transpose of the Matrix is:\n"
for (( i=0; i<col; i++ )) 
do
	for (( j=0; j<row; j++ ))  
	do
		echo -ne "${transpose[$i$j]} "
	done
	echo -e "\n"
done
