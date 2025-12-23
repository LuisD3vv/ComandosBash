#!/bin/bash

# Toda variable que lleve espeacios es mejor encerrarla entre comillas para evitar errroes de espacios

echo "====================="
echo "Ingrese un directorio"
read -p ">> " dir
rutalimpia=${dir##*/} # cuando es desde el inicio es */ y desde el final es /* (depende del simbolo aqui es una barra para rutas)
regulares=0
carpetas=0
otros=0

if [[ -e $dir && -d $dir ]]; then
    for i in "$dir"/*; do
        ((otros++))
        if [[ -f "$i" ]]; then
            ((regulares++)) # son clases de caracteres posix, definen conjuntos de caracteres
            ext=$(echo "${i##*.}" | tr '[:upper:]' '[:lower:]') # forma mas optima de tranformar minusculas a mayusculas 
            
        elif [[ -d "$i" ]]; then
            ((carpetas++))
        fi
    done
else
    echo "El directorio proporcionado no existe."
    exit
fi

if [[ $regulares -eq 0 && $carpetas -eq 0 ]];then
    echo "No hubo resultados."
else
    echo "Directorio: $rutalimpia"
    echo "Archivos: $regulares"
    echo "Directorios: $carpetas"
    echo "Otros archivos: $otros"
fi
