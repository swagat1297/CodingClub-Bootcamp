#!/bin/bash -x

#diclaring function  for toss
function Toss(){

	while [ $H -ne 21 ] -a [ $T -ne 21 ]
	do
		Number=$(( $RANDOM%1 ))
		if [ $Number -eq 1 ] ; then
        		echo "HEADS";
			((H++))
		else
        		echo "TAILS";
			((T++))
		fi
	done
	#to calculate the difference is minimum 2 
	D=$(($H-$T))
	if [ $D -le 2 -o $D -ge -2 ]
	then
        	echo "Draw"
		while [ $D -ge 2 -a $D -le -2 ]
		do
			 Number=$(( $RANDOM%1 ))
                	if [ $Number -eq 1 ] ; then
                        	echo "HEADS";
                        	((H++))
                	else
                        	echo "TAILS";
                        	((T++))
                	fi
			D=$(($H-$T))

		done
	fi
}



Toss()

if [ $H -eq 21 ]
then
	echo "Head Won"
elif [ $D -eq 2 -o $D -eq -2 ]
then
	echo "Draw"
else
	echo "Tail won"
fi




