#!/bin/bash

v1=10
v2=2

if test $v1 -gt $v2; then
    echo "V1 es mayor que V2"
fi


if [ $v2 -lt $v1 ]; then
    echo "V2 es menor que V1"
fi

v3=2
v4=2
if [ $v3 -eq $v4 ]; then
    echo "V3 es igual que V4"
fi

n1=$(($RANDOM%30))

if [ $n1 -ge 10 -a $n1 -le  20 ]; then
    echo "$n1 esta entre 10 y 20"
fi
