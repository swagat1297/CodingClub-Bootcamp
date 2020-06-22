#!/bin/bash -x

#taking user inputs

read -p "enter number of inputs" n

for((i=0;i<n;i++))
do
	echo "enter input" $i
	read arr[$i]
done

#calculating average

for((i=0;i<n;i++))
do
	((add = add + arr[$i]))
done

((avg= add/n ))
echo $avg
