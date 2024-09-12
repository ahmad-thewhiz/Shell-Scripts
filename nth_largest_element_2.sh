#!/bin/bash

echo -e "Enter the size of the array"
read n

for (( i=0; i<n; i++ ))
do
	read a[$i]
done

echo -e "The array is"
for (( i=0; i<n; i++ ))
do
	echo -ne "$((a[$i])) "
done
echo -e ""


echo -e "Enter the value of n"
read b


for (( i=0; i<b; i++ ))
do
	let great=a[0]
	let pos=0
	for (( j=0; j<n; j++ ))
	do
		if [[ a[$j] -gt $great ]]
		then
			let great=$((a[$j]))
			let pos=$j
		fi
	done
	a[pos]=0
done

echo "$b th largest value is $great"