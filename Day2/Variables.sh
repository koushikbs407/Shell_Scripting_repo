#!/bin/bash


# this is a variable learning file


<<comment
anything written will not be executable it is only read
comment


read -p "enter the username :" username
echo " you have entered $username"

sudo useradd -m "$username"

if [[ $username == "koushik" ]]; then

        echo "name is koushik"

elif [[ $username == "dhanush" ]]; then
        echo "name is dhanush"

else
        echo "user name is not in the list"

fi

~
