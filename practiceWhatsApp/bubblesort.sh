#!/bin/bash -x

#user input
echo "enter no of value: "
read n
for((i=0;i<n;i++))
do
	read ar[$i]
done

#bubble sort
for((i=0;i<n-1;i++))
do
	for((j=0;j<n-i-1;j++))
	do
		if [ arr[$j] -gt arr[$j+1] ]
		then
			((temp=arr[$j]))
			((arr[$j]=arr[$j+1]))
			((arr[$j+1]=temp))
		fi
	done
done

#print output

for((i=0;i<n;i++))
do
	echo " " $arr[$i]
done


