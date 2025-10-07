#!/bin/bash


# Existen dos maneras de asignacion

# Asignacion de SubShell

directorioActual=$(pwd)
echo $directorioActual

# o con comillas

directorioActual2=`pwd`
echo $directorioActual2


# Las asignaciones que contienen espacios o barras
# deberan de utilizar contrabarras
# es decir \\ \n \t \' \(  \)

# Las comillas dobles protegen espacios y caracteres especiales al usar expansion de comandos

nombre="Mundo"
echo "Hola $nombre"



<<IMPORTANTE
Caracteres que no se protegen con comillas dobles:
• El signo de dólar ($) para expansión de variables.
• El acento grave (backtick) ‘ para sustitución de comandos.
• El backslash (\) si se usa para escapar caracteres.
• El asterisco (*) para expansión de comodines
IMPORTANTE


# el \ evita que el shell expanda variables y muestre como tal el valor que es.

#echo con la opcion -e, permite utilizan expresiones dentro de el texto

echo -e "Esto es una linea\nOtra linea"