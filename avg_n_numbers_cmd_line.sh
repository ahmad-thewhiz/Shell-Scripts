if [ $# -eq 0 ]; then
    echo "Please provide some numbers as arguments."
    exit 1
fi

n=$#

sum=0

for num in "$@"
do
    sum=$((sum + num))
done

result=$((sum / n))

echo "The average is: $result"
