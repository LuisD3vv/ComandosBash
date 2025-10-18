#!/bin/bash

## Codigo hecho Por Luis Alejandro Aguilar Soberanes LICD 2-1


<<Uno
1 - Creacion correcta
2 - Listado de carpetas correcto
3 - Mostrar contenido de cada archivo
4 - Eliminar Carpetas y su contenido
Uno

# Limpiamos la pantalla del usuario antes de empezar
clear

# Recibir la cantidad de carpetas del usuario.
echo "==================================="
read -p "¿Cuantas Directorios deseas crear?: " cp
echo "=================================="



declare -i cp
# Crear las carpetas y archivos de manera recursiva


# if para deter el codigo si ingresa un cero o menor
if [[ $cp -le 0 ]]; then
    echo "El numero debe ser mayor a cero"
    exit 1
    else
    echo "-------------------------------"
    echo "Creando carpetas y archivos..."
    # Se utilizo seq, crea una secuencia de 1 hasta n
    for i in $(seq 1 $cp); do
        mkdir "Carpeta_$i"
        touch "./Carpeta_$i/archivo_$i.txt"
        if [[ $i%3 -eq 0 && $i%5 -eq -0 ]]; then 
            echo "FizzBuzz $i" > "./Carpeta_$i/archivo_$i.txt"
        elif [[ $i%2 -eq 0 ]]; then
            echo "El numero $i es Par" > "./Carpeta_$i/archivo_$i.txt"
        else
            echo "El numero $i es Impar" > "./Carpeta_$i/archivo_$i.txt"
        fi
        echo "Carpeta_$i y archivo_$i.txt Creados."
    done
    echo "Paso 1 exitoso-creacion"
fi


# Mostrar las carpetas creadas y archivos
<<DOS
Se me hace mejor opcion el tree porque es mas visual
pero el ls se me hace que va mas acorde al ejercicio
DOS

# opcion 1
#tree .
#opcion 2, con comodines y find
echo "-------------------------------"
echo "Listar Directorios y archivos creados"
ls -Rl
echo "Paso 2 exitoso-listar"


# Mostrar el contenido de cada archivo de texto
echo "-------------------------------"
listado=$(find . -iname "*.txt")
echo "Listando contenido de cada archivo..."
for archivo in $listado; do
    cat $archivo
done
echo "Paso 3 exitoso-mostrarContenido"


echo "-------------------------------"
# Borrar cada carpeta ya archivo de texto cread
echo "Borrarando carpetas..."
for i in $(seq 1 $cp); do
    rm -rf "Carpeta_$i/"
done
echo "Paso 4 exitoso-EliminarLoCreado"
echo "Hecho por Luis Aguilar FIC 2-1 LICD"
echo "=================================="
