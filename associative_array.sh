# Associative Array
declare -A myArray

myArray=( [name]="Aman" [dept]="CSE" )
echo "Name is ${myArray["name"]}"
echo "Dept is ${myArray["dept"]}"