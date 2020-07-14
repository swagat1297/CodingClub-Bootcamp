x#!/bin/bash -x

read -p "enter number:" n

for((i=2;i<=n;i++))
do
	if((n%i -eq 0))
	then
		f=1
		break
	fi
done
if((f -ne 1))
then
	echo "is a prime number"
else
	echo "not a prime number"
fi
