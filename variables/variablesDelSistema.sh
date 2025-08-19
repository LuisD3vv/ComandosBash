#!/bin/bash
# nombre del script
$0
# pid del proceso que se le ha asignado en la ejecucion
$$
# Resultado devuelto por el uttimo proceso
$?

echo El script $0
echo Lo esta ejecutando $USER
echo Y se le ha asignado el PID: $$
echo usamos el parametro $1
mensaje="hola mundo"
echo Para decir...$mensaje