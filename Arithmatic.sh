#!/bin/bash -x
declare -A res
read -p "Enter first number:" num1
read -p "Enter second number:" num2
read -p "Enter third number:" num3
result1=$(($num1+$num2*$num3))
res[1]=$result1
result2=$(($num1*$num2+$num3))
res[2]=$result2
result3=$(($num3+$num1/$num2))
res[3]=$result3
result4=$(($num1%$num2+$num3))
res[4]=$result4
echo "The 4 results are" ${res[@]}
