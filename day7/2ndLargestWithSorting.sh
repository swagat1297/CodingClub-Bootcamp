#!/bin/bash -x

Loop=0
i=0
for ((Loop=1;Loop<=100;Loop++))
do
	if [$Loop%11 -eq 0]
	then
		arr[$i]=$Loop
		((i++))
	fi
done
echo "the integers that have repeated numbers are:" ${arr[@]}

