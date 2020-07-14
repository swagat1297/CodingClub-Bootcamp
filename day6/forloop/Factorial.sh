#!/bin/bash -x

Factorial=1
read -p "enter number for factorial:" n
for((i=1;i<=n;i++))
do
	((Factorial=Factorial * i))
done
echo "The value" $Factorial
