#!/bin/bash

clear
validar_ruta(){
    ## el parametro se pasa como si fuera el archivo por fura $1 $2 $3
    if [[ ! -e $1 ]]; then
        echo "El archivo no existe."
        return 3
    elif [[ -d $1 ]]; then
        echo "Es un directorio, no un archivo."
        return 4
    elif [[ ! -r $1 ]]; then
        echo "El archivo no tiene permisos de lectura."
        return 5
    elif [[ ! -w $1 ]]; then
        echo "El archivo no tiene permisos de escritura."
        return 6
    elif [[ ! -x $1 ]]; then
        echo "El archivo no es ejecutable."
        return 7
    elif [[ ! -s $1 ]]; then
        echo "El archivo esta vacio."
        return 8
    else
        echo "El archivo cumple con todas las condiciones."
        return 0
    fi
}

echo "Ingrese la ruta del archivo " 
read -p ">> " ruta
resultado=$(validar_ruta $ruta)
echo $resultado