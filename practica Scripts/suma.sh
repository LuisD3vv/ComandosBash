#!/bin/bash


echo "ingresa el primer numero: "
read NUM1

echo "Ingresa el segundo numero: "
read NUM2

SUMA=$((NUM1 + NUM2))
MAYOR=90

if [ "$MAYOR" -gt "$SUMA" ]; then
   echo "El numero secreto es mayor"

else

   echo "Lo has logrado tu numero $SUMA es mayor que $MAYOR"

fi

