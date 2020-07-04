#!/bin/bash -x
declare -A Dice
while [ n -eq 0 ]
do
        Value=$((1 + $RANDOM % 6))
        if [ $Value -eq 1 ] && [ ${Dice[Value1]} -lt 11 ]
        then
                ((Dice[Value1]+=$Value))
        elif [ $Value -eq 2 ] && [ ${Dice[Value2]} -lt 21 ]
        then
                ((Dice[Value2]+=$Value))
        elif [ $Value -eq 3 ] && [ ${Dice[Value3]} -lt 31 ]
        then
                ((Dice[Value3]+=$Value))
        elif [ $Value -eq 4 ] && [ ${Dice[Value4]} -lt 41 ]
        then
                ((Dice[Value4]+=$Value))
        elif [ $Value -eq 5 ] && [ ${Dice[Value5]} -lt 51 ]
        then
                ((Dice[Value5]+=$Value))
        elif [ $Value -eq 6 ] && [ ${Dice[Value6]} -lt 61 ]
        then
                ((Dice[Value6]+=$Value))
        else
                break
        fi
done

if [ ${Dice[Value1]} -eq 10 ]
then
	echo "Value 1 is highest"
elif [ ${Dice[Value2]} -eq 20 ]
then
	echo "Value 2 is highest"
elif [ ${Dice[Value3]} -eq 30 ]
then
	echo "value 3 is highest"

elif [ ${Dice[Value4]} -eq 40 ]
then
	echo "value 4 is highest"
elif [ ${Dice[Value5]} -eq 50 ]
then
	echo "value 5 is highest"
else
	echo "value 6 is highest"
fi





