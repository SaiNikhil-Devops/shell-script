#! /bin/bash

NUB1=100
NUM2=200

SUM=$(($NUB1+$NUM2))

echo "The sum is $SUM"


#Array

FRUITS=(("apple" "banana" "carrot" "strawberry"))

echo "Fruits are ${FRUITS[@]}"

echo "1st Fruits are ${FRUITS[0]}"
echo "2nd Fruits are ${FRUITS[1]}"