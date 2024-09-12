read -p "Enter a number: " num1
sum=0
rem=0
rev=0

while [ $num1 -gt 0 ]
do	
	rem=$(expr $num1 % 10)
	rev=$(expr $rev \* 10 + $rem)
	num1=$(expr $num1 / 10)
	sum=$(expr $sum + $rem)	
done

echo "Sum of digits is $sum"
echo "Reverse of the number is $rev"