#!/bin/bash -x

#taking user inpput
read -p "enter three inputs" a 
read b
read c

((UC2=a+b*c))
((UC3=a*b+c))
((UC4=c+a/b))
((UC5=a%b+c))

#store result in a Dictionary for every Computation

declare -A store
store[first]=$UC2
store[second]=$UC3
store[third]=$UC4
store[forth]=$UC5

#Read the values from the Dictionary into the array

str[0]=${store[first]}
str[1]=${store[second]}
str[2]=${store[third]}
str[3]=${store[forth]}

#sorting

for((i=0;i<4;i++))
do
	for((j=0;j<4 - i;j++))
	do
		if [ str[$i] -lt str[$j] ]
		then
			((temp=str[$j]))
			((str[$j]=str$j+1]))
			((str[$j+1]=temp))
		fi
	done
done


#show in accending order

for((i=4;i>0;i--))
do
	echo $srt[$i]
done


#Show in descending order

for((i=0;i<4;i++))
do
	echo $str[$i]
done

