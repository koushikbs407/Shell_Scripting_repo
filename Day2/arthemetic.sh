#!/bin/bash


<<comment
  this is a comment message

comment

echo "this program is all about arthematic opeartaions"


read -p "enter the first number to do arthimetic operation " number1

echo "entered first number is $number1 "

read -p "enter the second number to do arthimetic operation" number2

echo " entered second number is $number2 "

echo "sum of two numbers are  $((number1 + number2 )) "

echo " subraction of two numbers are $((number1 - number2 )) "

echo " multiplication of two numbers are $((number1 * number2 ))"

echo "division of two numbers are $((number1 / number2 )) "

echo "modular of two numbers are $((number1 % number2 )) "

                                                              