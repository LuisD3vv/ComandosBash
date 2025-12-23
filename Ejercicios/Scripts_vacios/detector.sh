#!/bin/bash

clear

salida() {
    echo "======================================================"
}
ruta=$(pwd)

salida=0
echo "Hola!, porfavor Ingresa tu nombre "
read -p ">> " nombre
if [[ -z $nombre ]]; then
    echo "Porfavor ingresa un nombre"
    exit 2
fi
clear
echo "Bienvenido $nombre"

# mientras salida no sea igual a 3

while [[ $salida -ne 3 ]]; do

fecha=$(date +"%Y-%m-%d") # formateado

# Solicitar al usuario el directorio o script
salida
echo "Opciones disponibles para verificar si un archivo esta escrito o no"
echo "1 ) Directorio especifico"
echo "2 ) Archivo simple cualquier extension con una ruta dada"
echo "3 ) Jugar al adivina el numero"
echo "4 ) Salir"
echo 
read -p ">> " opcion
salida
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
        # Buscar mediante la puta ruta
        archivo=$(find $direct -iname "*.$sufijo") # regresa varios
        if [ -r $archivo ]; then
            echo "Se requieren permisos elevados para leer el archivo."
        elif [ -w $archivo ]; then
            echo "Se requieren permisos elevados para escribir en el archivo."
        elif [ -x $archivos ]; then
            echo "El archivo no es ejecutable."
        else
            echo "Error en el archivo"
            exit 1
        fi
        for encontrado in $archivo; do
            todos+=("$encontrado")
        done
        salida
        echo "Archivos vacios con el sufijo $sufijo en el directorio '$direct'"
        for file in ${todos[*]}; do
            vacio=$(grep -v '^$' $file | grep -v '^#' | wc -l)
            if [[ $vacio -eq 0 ]]; then
                echo "El archivo $file esta vacio"
            else
                echo "El archivo $file no esta Vacio"
            fi
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
        # si el codigo de salida no es igual a 0, entonces tenemos un error.
        if [[ $? -ne 0 ]]; then
            echo "Error al ejecutar el comando Find"
        fi
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
    clear
    echo "Bienvenido a adininatoor"
    echo "Ingresa el rango del numero"
    read -p ">> " rango
    if [[ $rango =~ [a-zA-Z] ]]; then
        echo "debes ingresar un numero"
        break
    fi
    echo "Bien el numero estara en un rango entre el 1 y el $rango"
    numeroAleatorio=$(( $RANDOM %$rango )) # random es una funcion interna
    vidas=5
    while [[ $vidas -gt 0 ]]; do
        echo "Te quedan $vidas vidas"
        echo "Ingresa un numero"
        read -p  ">> " intento
        if [[ $intento =~ [a-zA-Z] ]]; then
            echo "Porfavor gillipollas, ingresa un numero"
            continue
        fi
        if [[ -z $intento ]]; then
            echo "porfavor ingresa un putisimo numero"
        fi
        if [[ $intento -gt $numeroAleatorio ]]; then
            echo "--> El numero es menor"
            ((vidas--))
        elif [[ $intento -lt $numeroAleatorio ]]; then
            echo "--> El numero es mayor"
            ((vidas--))
        fi
        if [[ $vidas -eq 0 ]]; then
            clear
            echo "Se te acabaron las vidas."
            break
        fi
        if [[ $intento -eq $numeroAleatorio ]]; then
            clear
            echo "has ganado!!"
            break
        fi
    done
    ;;
    4)
        echo "Ultima ejecucion $fecha"
        echo "hecho por Luis Aguilar 2025"
        exit 1
    ;;
    *)
        echo "Selecciona una opcion valida."
    ;;
esac
done

# verificar que existe el directorio o archivo