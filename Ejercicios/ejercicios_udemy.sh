#!/bin/bash

# Ejercicios con read y con parametros

# parametro
numeroParametro=$1

if [[ $numeroParametro %2 -eq 0  ]]; then
    echo "El numero $numeroParametro es par"
else
    echo "El numero $numeroParametro es impar"
fi

# read
echo "Ingresa un numero "
read -p ">> " $numeroParametro


if [[ $numeroParametro %2 -eq 0  ]]; then
    echo "El numero $numeroParametro es par"
else
    echo "El numero $numeroParametro es impar"
fi

# parametro

echo "Ingresa el primer numero: "
echo "Ingresa el segundo numero: "
read -p ">> " $numero1
read -p ">> " $numero2

if [[ $numero1 -eq $numero2 ]]; then
    echo "Los numero son iguales"
elif [[ $numero1 -gt $numero2 ]]; then
    echo "El numero $numero1 > $numero2 es mayor"
else
    echo "El numero $numero2 > $numero1 es mayor"
fi


# preguntar quien ha preguntado el script
read -r "Que usuario ha ejecutado el script" user
if [[ -z $user ]]; then
    echo ""
fi

if [[ $user -eq $USER ]]; then 



