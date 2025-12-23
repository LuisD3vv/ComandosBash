#!/bin/bash

echo "Esto $? no dice el codigo de salida del comando anteriormente ejecutado"
numeroRandom=$(( RANDOM%20+1 ))
echo $numeroRandom
contador=1
until [[ $contador -gt 2 ]]; do
    read -p "Ingresa el numero: " num
    if [[ $num -gt $numeroRandom ]]; then
        echo "El numero es menor"
    elif [[ $num -lt $numeroRandom ]]; then
        echo "El numero es mayor"
    fi
    if [[ $num -eq $numeroRandom ]]; then
        echo "Felicidades crack, ganaste"
        break
    fi
done