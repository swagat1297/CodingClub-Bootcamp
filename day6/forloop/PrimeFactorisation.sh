#!/bin/bash -x

read -p "enter number" n
if((n>2))
then
	while(($n%2 -eq 2))
	do
        	echo "2"
        	((n=n/2))
	done

	for((i=3;i<=sqrt;i+2))
	do
        	while((n%i -eq 0))
        	do
                	echo $i
                	((n=n/i))
        	done
		sqrt = ('scale=2;sqrt($n)' | bc)
	done
else
        echo "prime number"
fi
