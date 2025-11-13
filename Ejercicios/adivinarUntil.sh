#!/bin/bash

set -x # depuracion comun
set -e # detener ante error
set -v # ver lineas conforme se ejecutan y leen
set -u # variables no declaradas, el script se detiene si hay variables indefinidas
set -o pipefail # fallo o error dentro de tuberias o pipelines.
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