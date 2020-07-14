#!/bin/bash -x

Lower=100
Upper=1000

# for loop variables
Time=0
while [ $Time -lt 10 ]
do
	Number=0;	#initialising Number to alter everytime input given
	while[ $Number -le $Lower ]
	do
		Number=$Random;
		let "Number %= $Upper";
	done
        array[ $Time ] = $Number
        ((Time=Time+1));
done

first=0
second=0

for (( Time=0; Time < 10; Time++ ))
do
	if [ array[$Time] -le $first ]
        	then
            	$second = $first;
            	$first = array[$Time];
        if [ array[$Time] -le $second ] && [ array[$Time] != $first ]
            second = array[$Time]; 
    	fi
done

printf "The second largest element is " $second;

first=0
second=0
for (( Time=0; Time < 10; Time++ ))
do
        if [ array[$Time] -gt $first ]
                then
                $second = $first;
                $first = array[$Time];
        elif (( array[$Time] -le $second )) && ((array[$Time] != $first))
            second = array[$Time];
        fi
done

printf "The second smallest element is " $second;







