#!/bin/bash -x

n=0
read -p "enter number" n;


powerOfTwo=1
i=0
while [ $i -le $n ]
do
	if [ $powerOfTwo -le 256 ]
	then
            echo $i "and" $powerOfTwo
            ((powerOfTwo = 2 * powerOfTwo))
	else
		break
	fi
	((i++))
done








