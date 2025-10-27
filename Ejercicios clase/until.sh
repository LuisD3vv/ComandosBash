#!/bin/bash

# Luis Alejandro Aguilar Soberanes FIC UAS LICDD 2-1

contador=1

clear
echo "Hola, Cual es tu nombre?" 
read -p ">> " nombre
if [[ -z $nombre ]]; then
    echo "Porfavor, ingresa tu nombre."
    exit
fi
echo "Bienvenido $nombre, Este menu cuenta con diversas operaciones basicas."
echo "Utilizando until para el menu."
until [[ $contador -gt 5 ]];
do
    echo "Contador = $contador"
    echo "============================================="
    echo "• 1) Potencia de un numero."
    echo "• 2) Ingresar los elementos de un Vector."
    echo "• 3) Tabla de multiplicar de un numero dado."
    echo "• 4) Ingresar los elementos de una Matriz MxN."
    echo "• 5) Salir"
    echo "============================================="
    echo  "¿Cual quieres realizar?"
    read -p ">> " opcion
    if [[ $opcion -eq 0 ]]; then
        echo "Porfavor, ingresa una opcion."
    else
        echo "============================================="
    case $opcion in 
    1)
    clear
    echo "La Potencia de un numero"
    read -p "Ingresa un numero: " num
    result=$(echo "$num*$num" | bc )
    echo "La potencia de $num es ->$result<-"
    ;;
    2)
    clear
    echo "Elementos de un arreglo"
    arreglo=()
    read -p "Elige el largo del arreglo: " tam
    if [[ -z $tam ]]; then
        echo "Ingresa un numero"
        exit
    elif [[ $tam -lt 1 ]]; then
        echo "El numero debe ser mayor a cero"
        exit
    fi
    for elemento in $(seq $tam);
    do
    echo "Ingresa el elemento $elemento: "
    echo -n ">> "
    read num
        arreglo+=("$num")
    done
    echo "Elementos del vector: "
    for elemento in ${arreglo[@]}; do
        echo -n "[$elemento]"
    done
    echo
    ;;
    3)
    clear
    echo "Tabla de multiplicar"
    read -p "Ingresa el numero a multiplicar: " n
    if [[ $n -eq 0 ]]; then
        echo "El numero a multiplicar debe ser diferente de cero"
        exit
    fi
    for mult in $(seq 10); do
        op=$(echo "$n*$mult" | bc )
        echo "$n * $mult = $op"
    done
    ;;
    4)
    clear
    echo "LLenando una matriz"
    read -p "Ingresa el tamaño de las filas: " filas
    read -p "Ingresa el tamaño de las columnas: " columnas
    matriz=()
    for ((i=0;i<$filas;i++)); do
        for ((j=0;j<$columnas;j++)); do
            echo "Ingresa el valor en la posicion [$i][$j]"
            read -p ">> " valor
            if [[ $valor -eq 0 ]]; then
                echo "El elemento no debe estar vacio."
                ((j--))
            else
                # calcular la posicion del indice
                matriz[$((i*columnas + j))]=$valor
            fi
        done
    done
    clear
    echo "Impresion de la matriz: "
    for ((i=0;i<$filas;i++)); do
        for ((j=0;j<$columnas;j++)); do
        echo -n "["
            echo -n "${matriz[$((i*columnas + j))]} "
        echo -n "]"
        done
        echo
    done
    ;;
    5)
    clear
    echo "Has salido."
    echo "hecho por Lissandro Ciencia de Datos UAS GPO 2-1"
    fecha=$(date +'%Y-%m-%d')
    echo "Fecha de ejecucion -> $fecha"
    exit
    ;;
    *)
    echo "Opcion no valida."
    ;;
    esac
    ((contador++))
    fi
done
