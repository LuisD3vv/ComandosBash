#!/bin/bash


<<SINTAX
-d Cierto si la ruta existe y es un directorio
-e Cierto si la ruta existe sea el elemento que sea
-f Cierto si la ruta existe y es un fichero normal
-r cierto si la ruta existe y se puede leer
-w cierto si la ruta existe y se puede escribir
-x cierto si la ruta existe y es un ejecutable
-s cierto si la ruta existe y su tamanno es mayor a 0
SINTAX


read -p "Introduzca una ruta: " ruta

if [ ! -e $ruta ]; then
    echo "esta ruta NO existe"
    # termina el script y no ejecuta nada mas, algo parecido al return
    exit 1 
fi

if [ -d $ruta ]; then
    echo "es un directorio"
fi

if [ -f $ruta -a -w $ruta  ]; then
    echo "es un fichero y se puede escribir"
fi


