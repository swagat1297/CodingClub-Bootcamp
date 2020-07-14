#!/bin/bash -x

read -p "enter number" num

Prime() {
	f=0
	n=$(echo "sqrt($num)" | bc)
	for((i=2;i<=n;i++))
	do
		if [ $num % $i -eq 0 ]
		then
			f=1
		fi
	done
	if [ $f -eq 0 ]
	then
        	echo " is prime"
        else
        	echo "not a prime number"
	fi
}

palindrom() {
        for((i=num;num!=0;num=num/10))
        do
                ((L=num % 10))
                ((sum=sum * 10 + L))
        done
}
Prime
palindrom
if [ $f -eq 0 ]
then
	echo " is prime"
	((num=sum + i))
	Prime
fi


