#!/bin/bash


# Definicion del array separados por un espacio

miarray=(dato1 dato2 dato3) #Tambien pueden ser variables

# Lectura

echo ${miarray[0]}
echo ${miarray[1]} 
echo ${miarray[2]}
echo ${miarray[-1]}

# Otros metodos
#mostrar todos lo elementos
echo ${miarray[*]} 
echo ${miarray[@]} 
#Mostrar la cantidad de elementos (cantidad general de elemtos)
#echo ${#miarray[@]}
echo las cantidad de elementos es ${#miarray[@]}
echo Los indices disponibles son ${!miarray[@]}
# Eliminar
unset miarray[1]
echo depues de borrar
echo Nos quedan los elementos ${miarray[@]} 
echo las cantidad de elementos es ${#miarray[@]}
echo Los indices disponibles son ${!miarray[@]}
