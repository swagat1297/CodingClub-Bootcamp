#!/bin/bash -x

declare -A month
while((i<50))
do
	m=$((1+$RANDOM % 12))
	month[man:"$i"]=$m
	((i=$count + 1))
done
for (( j=1;j<=12;j++))
do
	i=1
	echo "==m:$j=="
	while(($i<50))
	do
		if [ ${month[man:"$count"]} -eq $1 ]]
		then
			echo "man:$i"
		fi
	done
done
echo ${!month[@]}
echo ${month[@]}
