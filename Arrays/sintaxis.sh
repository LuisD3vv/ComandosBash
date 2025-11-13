#!/bin/bash

arreglo=(1 2 3 4 5 6 7 8 9 10)]

echo "Todos los elementos -> ${arreglo[@]}"

# Mostrar el largo, lleva el #

echo "Todos los elementos -> ${#arreglo[@]}"
# un elemento especifico
echo arreglo[1]
echo arreglo[2]

# eliminar elementos especificos
unset $arreglo[1]
# eliminar todos los elementos 
unset $arreglo