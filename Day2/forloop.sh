#!/bin/bash

# =====================================================
# Shell Scripting: Types of For Loops with Use Cases
# =====================================================

echo "---------- 1. Loop over a list ----------"
# Use case: Sending notifications to a list of users
users=("Alice" "Bob" "Charlie")
for user in "${users[@]}"
do
    echo "Sending email to $user"
done

echo
echo "---------- 2. Loop over a range of numbers ----------"
# Use case: Generating invoice numbers from 1001 to 1005
for invoice in {1001..1005}
do
    echo "Processing invoice #$invoice"
done

echo
echo "---------- 3. C-style for loop ----------"
# Use case: Performing batch operations on servers 1 to 5
for (( i=1; i<=5; i++ ))
do
    echo "Deploying application to server$i"
done

echo
echo "---------- 4. Loop over files in a directory ----------"
# Use case: Listing all log files in /var/log
log_dir="/var/log"
for file in "$log_dir"/*.log
do
    # Check if files exist to avoid printing literal pattern
    if [ -f "$file" ]; then
        echo "Found log file: $file"
    fi
done

echo
echo "---------- 5. Loop using command output ----------"
# Use case: Listing all users on the system
for user in $(cut -d: -f1 /etc/passwd)
do
    echo "System user: $user"
done

echo
echo "---------- 6. Loop with step increment ----------"
# Use case: Backup database every 5 minutes from 0 to 30 minutes
for min in {0..30..5}
do
    echo "Performing backup at minute $min"
done

echo
echo "---------- 7. Nested for loops ----------"
# Use case: Creating directories for projects and submodules
projects=("ProjectA" "ProjectB")
modules=("Module1" "Module2")
for project in "${projects[@]}"
do
    for module in "${modules[@]}"
    do
        echo "Creating folder for $project/$module"
    done
done
