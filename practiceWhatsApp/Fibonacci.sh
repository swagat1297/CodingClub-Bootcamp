#!/bin/bash -x

read -p "Enter number of terms" n

Num=1  #first integer

echo "Fibonacci Series: "

for((i=1;i<=n;i++))
do
	#Swapping and adding the values
	echo $Num
	((Next=Num+Num1))
	((Num=Num1))
	((Num1=Next))
done

