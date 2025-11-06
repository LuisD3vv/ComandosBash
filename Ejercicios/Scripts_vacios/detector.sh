#!/bin/bash

clear
salida() {
    echo "=============================="
}
ruta=$(pwd)

salida=0
echo "Ingresa tu nombre "
read -p ">> " nombre
if [[ -z $nombre ]]; then
    echo "Porfavor ingresa un nombre"
    exit 2
fi
echo "Bienvenido $nombre"

# mientras salida no sea igual a 3

while [[ $salida -ne 3 ]]; do
clear
fecha=$(date +"%Y-%m-%d") # formateado

# Solicitar al usuario el directorio o script
salida
echo "Selecciona una opcion para verificar si esta vacio o no"
echo "1 ) Directorio especifico"
echo "2 ) Archivo simple cualquier extension"
echo "3 ) Jugar al adivina el numero"
echo "4 ) Salir"
echo 
read -p ">> " opcion

if [[ $opcion -eq 3 ]]; then
    salida=3
fi
case $opcion in
    1)
    echo "Comprobacion de directorios"
    echo "Ingresa la ruta del directorio: (.) para el actual." 
    read -p ">> " direct
    if [[ ! -d $direct ]]; then
        echo "porfavor, ingresa una ruta existente"
    else
        echo "ingresa el tipo de archivo sin punto(e.g txt,py,conf,temp)"
        read -p ">> " sufijo
        todos=()
        archivo=$(find . -iname "*.$sufijo") # regresa varios
        for encontrado in $archivo; do
            todos+=("$encontrado")
        done
        salida
        echo "Archivos con el sufijo $sufijo en el directorio $direct"
        for file  in ${todos[*]}; do
            echo $file
        done
        
    fi
    ;;
    2)
    echo "Comprobacion de archivo"
    echo "Ingresa el nombre del archivo"
    read -p ">> " arch
    if [[ ! -f "$arch" ]]; then
        echo "El archivo dado no existe"
    else
        echo "si existe"
        vacio=$(grep -v '^$' $arch | grep -v '^#' | wc -l)
        if [[ $vacio -eq 0 ]]; then
            echo "El archivo esta vacio"
            echo "Deseas eliminarlo (si-no) "
            read -p ">> " opcion
            if [[ "$opcion" == 'si' ]]; then
                rm $arch
                echo "archivo eliminado"
            fi
        else
            echo "el archivo no esta vacio"
            
        fi
    fi
    ;;
    3)
        echo "A jugar"
        echo "Ingresa el rango del numero"
        read -p ">> " rango
        if [[ $rango =~ [a-zA-Z] ]]; then
            echo "debes ingresar un numero"
            continue
        fi
        echo "Bien el numero estara en un rango entre el 1 y el $rango"
        numeroAleatorio=$(($RANDOM % $rango)) # random es una funcion interna
        vidas=5
        while [[ $vidas -gt 0 ]]; do
            echo "Te quedan $vidas vidas"
            echo "Ingresa un numero: "
            read -p  ">> " intento
            while [[ $intento =~ [a-zA-Z] ]]; do
                if [[ -z $intento ]]; then
                    echo "porfavor ingresa un putisimo numero"
                fi
                echo
                if [[ $intento -gt $numeroAleatorio ]]; then
                    echo "-> El numero es menor"
                    echo
                    ((vidas--))
                elif [[ $intento -lt $numeroAleatorio ]]; then
                    echo "-> El numero es mayor"
                    echo
                    ((vidas--))
                fi
                if [[ $intento -eq $numeroAleatorio ]]; then

                    echo "has ganado perro"
                    break
                fi
            done
        done
    ;;
    4)

        echo "Ultima ejecucion $fecha"
        echo "hecho por Luis Aguilar 2025"
        exit
    ;;
    *)
        echo "Selecciona una opcion valida"
    ;;
esac
done



# verificar que existe el directorio o archivo