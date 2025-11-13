#!/bin/bash


EXTENSIONES=("txt" "log" "dat" "tmp")

for ((i=0;i<4;i++));
do
    touch "archivo.${EXTENSIONES[$i]}"
done
echo "Archivos creados exitosamente"