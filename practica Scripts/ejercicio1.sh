#!/bin/bash

#Recibir 5 parameteros y decir cuando se han introducido
echo Ingresa los siguientes datos
read -p "Ingresa tu nombre: " nombre
read -p "Ingresa tu Segundo nombre: " segundo
read -p "Ingresa tu Apellido Paterno: " apellidoP
read -p "Ingresa tu Apellido Materno: " apellidoM
read -p "Ingresa tu Edad: " edad


array=($nombre $segundo $apellidoP $apellidoM $edad)
echo Los elementos introducidos fueron(son): ${array[*]}
echo La cantidad de elementos introducidos es ${#array[@]}
echo Los primeros tres parametros son
echo ${array[0]}
echo ${array[2]}
echo ${array[3]}

#PRACTICAR BURTALMENTE COMANDOS YA VISTOS PORFAVOR PUTA MADRE