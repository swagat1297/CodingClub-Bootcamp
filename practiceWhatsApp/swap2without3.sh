#!/bin/bash -x

read -p "enter value a" a
read -p "enter value b" b

echo "value before swapping" "a=" $a "b=" $b

((a=a+b))
((b=|a-b|))
((a=b-a))

echo "value aftre swapping a=" $a "b=" $b

















