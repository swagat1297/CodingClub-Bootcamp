#!/bin/bash -x

read -p "enter number" n

while [ $n -ne 0 ]
do
	((Rev = Rev * 10))
	((Rev = Rev + n % 10))
	((n = n / 10))
done

echo "reversed value" $Rev
