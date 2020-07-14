#!/bin/bash -x

Add=0
echo "enter three integers:";
for (( i=0; i<=2; i++ ))
do
	read arr[$i]
done

for ((i=0;i<3;i++))
do
	((Add=Add+arr[$i]))
done
echo "the value" $Add
if [ $Add -eq 0 ]
then
	echo "the addition is 0"
else
	echo "the addition is not 0"
fi

