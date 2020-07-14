#!/bin/bash -x

Re=100
i=1
while [ $Re -gt 0 ]
do
	luck=$(( $RANDOM%2 ))
	if [ $luck -eq 1 ]
	then
		echo "round" $i "won"
		((Re=Re+2))
	elif [ $Re >= 200 ]
	then
		echo "Target achived"
		break
	else
		echo $i "round loss"
		((Re=Re-2))
	fi
	((i++))
done 
