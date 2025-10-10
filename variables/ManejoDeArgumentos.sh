#!/bin/bash

# Los scripts pueden recibuir parametros desde la consola

# Todos los parametros a nivel argumento se toman con $ este simbolo acompa;ada y el numero del argumento

# El $0 es el nombre del archivo

#asi ./nombrearchivo param1 param2 param3
nombre=$1
aguilar=$2
edad=$3

# Imprime todos los argumentos
echo "Nombre $nombre, Apellido $aguilar, edad $edad"
# numero de parametros
echo "numero de parametros = $#"
# numero de conjuntos, es decir todos los argumentos
echo "numero de conjuntos de los parametros = $@"
# codigo de salida es decir si es 0,1, o 2
# siendo 0 Entrada estandar,1 salida estandar, 2 salida de error estandar
echo "verificar el codigo de salida = $?"
