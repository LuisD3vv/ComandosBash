#!/bin/bash

# Contar apariciones de un caracter en una cadena

#Codigo hecho por Luis Alejandro Aguilar Soberanes LICS 2-1

echo "========================="
read -p "Ingrese una cadena de texto: " cadena

if [ $cadena -z  ]; then
    echo "Porfavor ingresa una cadena valida"
    exit 1
fi
longitud=${#cadena}

letras=0
numeros=0
car_especiales=0

for (( i=0; i<$longitud; i++ )); do
    caracter=${cadena:$i:1}
    if [[ "$caracter" =~ [0-9] ]]; then
        ((numeros++))
    elif [[ "$caracter" =~ ['#','$','&','!','@',',','_',','] ]]; then
        ((car_especiales++))
    else
        ((letras++))
    fi
done

echo "- - - - - - - - - - -"
if [[ $numeros -eq 0  &&  $car_especiales -eq 0  && $letras -eq 0  ]];
    echo "Error cadena vacia"
else
    if [[ $numeros -eq 0 ]];
    echo "Numero de apariciones numericas en la cadena $cadena: $numeros"
echo "Numero de apariciones de caracteres especiales en la cadena $cadena: $car_especiales"
echo "Numero de apariciones alfabeticas en la cadena $cadena: $letras"

echo "========================="

