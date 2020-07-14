#!/bin/bash -x

read -p "enter the numbers" n1 
read n2

palindrom() {
	for((i=num;num!=0;num=num/10))
	do
		((L=num % 10))
		((sum=sum * 10 + L))
	done
}
num=$n1
palindrom
if [ $i -eq $sum ]
then
	echo $n1 "is palindrom number"
else
	echo $n1 "not palindrom"
fi
num=$n2
palindrom
if [ $i -eq $sum ]
then
        echo $n2 "is palindrom number"
else
        echo $n2 "not palindrom"
fi


