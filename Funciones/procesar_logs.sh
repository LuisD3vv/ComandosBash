#!/bin/bash

function main () {
    busqueda=$(grep -ciE "WARNING|ERROR" $1)
    echo "Coincidencias encontradas -> $busqueda"
}


echo "Ingresa la ruta de un archivo."
read -p ">> " ruta

if [[ ! -f $ruta || ! -e $ruta ]]; then
    echo "No es un archivo el archivo no existe"
    exit 1
else 
    main $ruta
fi