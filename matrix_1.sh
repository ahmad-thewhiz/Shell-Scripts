echo "Enter row"
read row

echo "Enter column"
read col

echo -e "Enter First Matrix:\n"

for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		read -p "Enter element for [$i,$j]: " a[$i$j]
	done
done
	
echo -e "Matrix is:\n"

for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		echo -ne "${a[$i$j]} " 
	done
	echo -e "\n"  
done


echo -e "Enter Second Matrix:\n"

for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		read -p "Enter element for [$i,$j]: " b[$i$j]
	done
done
	
echo -e "Matrix is:\n"

for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		echo -ne "${b[$i$j]} " 
	done
	echo -e "\n"  
done


# Addition Matrix

for (( i=0;i<row;i++ ))
do
	for (( j=0;j<col;j++ ))	
	do
		m=$((a[$i$j]))
		n=$((b[$i$j]))
		
		let c[$i$j]=m+n
		done
	done
	
echo -e "Matrix Addition:\n"

for (( i=0; i<row; i++ ))
do
	for (( j=0; j<col; j++ ))
	do
		echo -ne "${c[$i$j]} " 
	done
	echo -e "\n"  
done
