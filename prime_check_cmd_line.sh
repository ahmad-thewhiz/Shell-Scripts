#!/bin/bash

number=$1

if [ $number -le 1 ]; then
    echo "$number is not a prime number."
    exit 0
fi

for (( i=2; i*i<=$number; i++ ))
do
    if [ $((number % i)) -eq 0 ]; then
        echo "$number is not a prime number."
        exit 0
    fi
done

echo "$number is a prime number."
