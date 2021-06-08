#!/bin/bash -x
declare -A res
count=0
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
ress[((count++))]=${res[1]}
ress[((count++))]=${res[2]}
ress[((count++))]=${res[3]}
ress[((count++))]=${res[4]}
for((i=0;i<4;i++))
do
	for((j=$(($i+1));j<4;j++))
	do
		if [[ ress[$i] -gt ress[$j] ]]
		then
			temp=${ress[$j]}
			ress[$j]=${ress[$i]}
			ress[$i]=$temp
		fi
	done
done
echo "The 4 results are" ${res[@]}
echo "The 4 results in ascending order are" ${ress[@]}
