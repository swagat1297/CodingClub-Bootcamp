#!/bin/bash -x

j=0;
read -p "enter number" n
while(($n%2 -eq 2))
do
	((array[$j]=2))
	((n=n/2))
	((j++))
done

for((i=3;i<=sqrt;i+2))
do
	while((n%i -eq 0))
	do
		((array[$j]=i))
		((n=n/i))
		((j++))
	done
	sqrt = 'scale=2;sqrt($n)' | bc
done
if((n>2))
then
	echo ${array[@]}
else
	echo "prime number"
fi
