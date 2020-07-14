#!/bin/bash -x

n=0
while((n>11))
do
	Number=$(( $RANDOM%2 ))
	if [ $Number -eq 1 ]
	then
        	echo "HEADS";
		((h++))
	else
        	echo "TAILS";
		((t++))
	fi
	((n++))
done
if [ $h -gt $t ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi





