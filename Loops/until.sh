#!/bin/bash


# until funciona mientras una condicion sea falsa
contador=1

until [[ $contador -gt 10 ]]; do
    echo "Contador: $contador"
    contador=$((contador + 1))
done

#Autoincremento

until [[ $contador -gt 10 ]]; do
    echo "Contador: $contador"
    ((contador++))
done