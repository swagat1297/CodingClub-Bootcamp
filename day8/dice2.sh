#!/bin/bash

declare -A diceValue1
declare -A diceValue2
declare -A diceValue3
declare -A diceValue4
declare -A diceValue6
while [ n -eq 0 ]
do
        Value=$((1 + $RANDOM % 6))
        if [ $Value -eq 1 ] && [ ${#diceValue1[@]} -lt 10 ]
        then
		diceValue1[roll"$i"]=$Value

        elif [ $Value -eq 2 ] && [ ${#diceValue2[@]} -lt 10 ]
        then
		diceValue2[roll"$i"]=$Value

        elif [ $Value -eq 3 ] && [ ${#diceValue3[@]} -lt 10 ]
        then
                diceValue3[roll"$i"]=$Value

        elif [ $Value -eq 4 ] && [ ${#diceValue4[@]} -lt 10 ]
        then
                diceValue4[roll"$i"]=$Value

        elif [ $Value -eq 5 ] && [ ${#diceValue5[@]} -lt 10 ]
        then
                diceValue5[roll"$i"]=$Value

        elif [ $Value -eq 6 ] && [ ${#diceValue6[@]} -lt 10 ]
        then
                diceValue6[roll"$i"]=$Value
	else
                break
        fi
	((i++))
done
if [ ${#diceValue1[@]} -eq 10 ]
then
	echo " value 1 highest outcome "
elif [ ${#diceValue2[@]} -eq 10 ]
then
	echo "value 2 highest outcome "
elif [ ${#diceValue2[@]} -eq 10 ]
then
        echo "value 2 highest outcome "
elif [ ${#diceValue2[@]} -eq 10 ]
then
        echo "value 2 highest outcome "
elif [ ${#diceValue2[@]} -eq 10 ]
then
        echo "value 2 highest outcome "
else
	echo "value 6 highest outcome "
fi
