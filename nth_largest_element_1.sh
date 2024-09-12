echo "Enter the size of the array:"
read n

echo "Enter the array elements:"
for (( i=0; i<n; i++ ))
do
    read -p "Element [$i]: " arr[$i]
done

echo "Enter the value of n (to find nth largest element):"
read nth

# Bubble sort
for (( i=0; i<n-1; i++ ))
do
    for (( j=0; j<n-i-1; j++ ))
    do
        if [ ${arr[$j]} -lt ${arr[$((j+1))]} ]; then
            temp=${arr[$j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

if [ $nth -le $n ] && [ $nth -gt 0 ]; then
    echo "The $nth largest element is: ${arr[$((nth-1))]}"
else
    echo "Invalid value of n"
fi
