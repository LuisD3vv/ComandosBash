#!/bin/bash

matriz=(
    "1 2 3"
    "4 5 6"
    "7 8 9"
)
# recorrer cada elemento de una matriz
for columna in "${matriz[*]}"; do
    for fila in $columna; do
        echo -n $fila
    done
    echo 
done

matriz2=()

# si funciona

for ((i=0; i<3; i++)); do
    echo "Ingresa la matriz"
    read -p ">> " elemento
    matriz2+=("$elemento")
done
echo 
echo "Todos los elementos -> ${#matriz2[@]}"
# recorrer cada elemento de una matriz
for columna in "${matriz2[*]}"; do
    echo $columna
done