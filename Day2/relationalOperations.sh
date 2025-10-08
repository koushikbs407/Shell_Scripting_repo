#!/bin/bash

# This program tests all relational operations between two numbers

# Read two numbers from the user
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Equal
if [ $num1 -eq $num2 ]; then
    echo "$num1 is equal to $num2"
else
    echo "$num1 is not equal to $num2"
fi

# Not equal
if [ $num1 -ne $num2 ]; then
    echo "$num1 is not equal to $num2"
else
    echo "$num1 is equal to $num2"
fi

# Less than
if [ $num1 -lt $num2 ]; then
    echo "$num1 is less than $num2"
else
    echo "$num1 is not less than $num2"
fi

# Less than or equal
if [ $num1 -le $num2 ]; then
    echo "$num1 is less than or equal to $num2"
else
    echo "$num1 is greater than $num2"
fi

# Greater than
if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is not greater than $num2"
fi

# Greater than or equal
if [ $num1 -ge $num2 ]; then
    echo "$num1 is greater than or equal to $num2"
else
    echo "$num1 is less than $num2"
fi
