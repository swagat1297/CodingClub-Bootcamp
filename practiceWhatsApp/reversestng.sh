#!/bin/bash

read -p "enter string" value

reverse=""
 
len=${#value}
for (( i=$len-1; i>=0; i-- ))
do 
	reverse="$reverse${value:$i:1}"
done
 
echo "$reverse"

