#!/bin/bash

# File testing program

# You can change this path to test any file
file="/etc/passwd"

echo "Testing file: $file"
echo

# Check if file exists
if [ -e "$file" ]; then
    echo "File exists"
else
    echo "File does NOT exist"
fi

# Check if regular file
if [ -f "$file" ]; then
    echo "It’s a regular file"
fi

# Check if directory
if [ -d "$file" ]; then
    echo "It’s a directory"
fi

# Check read permission
if [ -r "$file" ]; then
    echo "Readable"
fi

# Check write permission
if [ -w "$file" ]; then
    echo "Writable"
fi

# Check execute permission
if [ -x "$file" ]; then
    echo "Executable"
fi

# Check if file size > 0
if [ -s "$file" ]; then
    echo "File size > 0"
fi
