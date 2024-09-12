#!/bin/bash

sum=0
count=0

echo "Enter the numbers (separated by spaces):"
read -a numbers

for num in "${numbers[@]}"
do
    sum=$(echo "$sum + $num" | bc)  
    ((count++))                    
done

if [ $count -ne 0 ]; then
    average=$(echo "scale=2; $sum / $count" | bc)  # Calculate average with 2 decimal places
    echo "The average is: $average"
else
    echo "No numbers were entered."
fi
