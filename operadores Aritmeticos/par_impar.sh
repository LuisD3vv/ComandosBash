#!/bin/bash


read -p "ingresa n: " n

n2=5

if (($n  % 2==0)); then
    echo "El numero $n es par"
else
    echo "El numero $n es impar"
fi

if [[ "$n2" -gt "$n" ]]; then
   echo "El valor 2 es mayor al valor 1"

else

   echo "El valor 1 es mayor"
fi


if [[ $n%2  -eq 0 ]]; then 
    echo "El numero $n es par"
else
    echo "El numero $n es impar"
fi

