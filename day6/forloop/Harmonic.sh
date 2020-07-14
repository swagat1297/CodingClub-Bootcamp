#!/bin/bash -x
read -p "enter number:" n
Harmonic=1
for((i=2;i<=n;i++))
do
	((Harmonic = Harmonic + 1/i))
done
echo " Harmonic Result"
a=$(echo'scale=2;$Harmonic'|bc-1); echo $a
