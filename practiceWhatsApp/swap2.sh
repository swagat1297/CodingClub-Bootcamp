#!/bin/bash -x

read -p "enter value a" a
read -p "enter value b" b

echo "value before swapping" "a=" $a "b=" $b

((c=a))
((a=b))
((b=c))

echo "value aftre swapping a=" $a "b=" $b
