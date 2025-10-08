#!/bin/bash

# Logical operators demo

read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo

# AND operator: both conditions must be true
if [ $num1 -gt 0 ] && [ $num2 -gt 0 ]; then
    echo "Both numbers are greater than 0 (AND condition)"
else
    echo "AND condition not satisfied"
fi

# OR operator: at least one condition is true
if [ $num1 -gt 0 ] || [ $num2 -gt 0 ]; then
    echo "At least one number is greater than 0 (OR condition)"
else
    echo "OR condition not satisfied"
fi

# NOT operator: negates a condition
if ! [ $num1 -gt 0 ]; then
    echo "num1 is NOT greater than 0 (NOT condition)"
else
    echo "num1 is greater than 0"
fi
