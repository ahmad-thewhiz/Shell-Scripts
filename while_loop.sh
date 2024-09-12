read -p "Enter a number: " num1

while [[ $num1 -gt 0 ]]
do
    echo "$num1"
    ((num1--))
done
