#!/bin/bash

fecha=$(date +%Y%m%d)
dirActual=$(pwd)


echo "Ingresa la ruta a un directorio"
read -p ">> " ruta

if [[ -z $ruta ]]; then
    echo "Porfavor, ingresa una ruta"
    exit 1
elif [[ ! -d $ruta ]]; then
    echo "Porfavor ingresa una ruta que lleve a un directorio"
else
    echo "Creando directorio"
    mkdir -pv "Backups_$fecha"
    echo "iterando sobre la ruta"
    for i in "$ruta"; do
    # aqui estamos tratando con archivos no con lineas de texto individuales
    # con --parents conservamos la estructura de carpetas original es decir las rutas.
        find "$i" -mtime -1 -type f -exec cp --parents {} "Backups_$fecha/" \;
    done
fi


<<DOC
otra forma de hacerlo que es un poco menos intuitiva es la de abajo.

find "$ruta" -mtime -1 -type f | while read archivo; do
    cp -vr "$archivo" "Backups_$fecha/"
done

recordemos que son archivos, no lineas individuales de codigo
<<DOC
