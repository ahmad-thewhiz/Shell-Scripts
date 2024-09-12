if [ $# -eq 0 ]; then
    echo "Please provide a number."
    exit 1
	
number=$1

if [ $(($number % 2)) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
