#!/bin/bash -x
read -p "Enter first number:" num1
read -p "Enter second number:" num2
read -p "Enter third number:" num3
result1=$(($num1+$num2*$num3))
result2=$(($num1*$num2+$num3))
result3=$(($num3+$num1/$num2))
echo "The first result is "$result1
echo "The second result is "$result2
echo "The third result is "$result3
