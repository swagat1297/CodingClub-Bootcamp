#!/bin/bash -x

temp=0
Time=0
Number=0
Lower=100
Upper=1000
while [ $Time -le 5 ]
do
        while [ $Number -le $Lower ]
        do
                Number=$RANDOM;
                let "Number %= $Upper";
        done
        Time=$((Time+1));
        array[$Time] = $Number
        fi
done
for((i=0;i<5;i++))
do
	for((j=0;j<5-i;j++))
	do
		if((array[$j]>array[$j+1]))
		then
			((temp=array[$j]));
			((array[$j]=array[$j+1]));
			((array[$J+1]=temp));
		fi
	done
done
echo "second largest" ${array[3]}
echo "second smallest" ${array[1]}
