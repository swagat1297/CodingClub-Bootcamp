#!/bin/bash -x

n=0
read -p "enter number" n


powerOfTwo=1
for((i=0;i<= n;i++))
do
            echo $i "and" $powerOfTwo
            ((powerOfTwo = 2*powerOfTwo))
done


