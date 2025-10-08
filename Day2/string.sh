#!/bin/bash

# String comparison program

# Initialize strings
str1="hello"
str2="world"

echo "str1 = $str1"
echo "str2 = $str2"
echo

# Check equality
if [ "$str1" = "$str2" ]; then
    echo "str1 is equal to str2"
else
    echo "str1 is NOT equal to str2"
fi

# Check not equal
if [ "$str1" != "$str2" ]; then
    echo "str1 is NOT equal to str2 (verified)"
else
    echo "str1 is equal to str2"
fi

# Check if string is empty
if [ -z "$str1" ]; then
    echo "str1 is empty"
else
    echo "str1 is NOT empty"
fi

# Check if string is NOT empty
if [ -n "$str1" ]; then
    echo "str1 is NOT empty (verified)"
else
    echo "str1 is empty"
fi

# Check if string is not null
if [ "$str1" ]; then
    echo "str1 is not null"
else
    echo "str1 is null"
fi
