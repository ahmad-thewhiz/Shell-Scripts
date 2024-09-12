myArray=( 1 2 Hello "CSE Department" )

echo "my first value ${myArray[0]}"

echo "my second value is ${myArray[2]}"

echo "All values are ${myArray[*]}"

echo "length of the array ${#myArray[*]}"

echo "only value of 2-3 ${myArray[@]:2:2}"

myArray+=(5 6 7 8 9 10)

echo "First value is ${myArray[0]}"
echo "First and Second value is ${myArray[@]:4:2}"
