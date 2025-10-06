#!/bin/bash

# -d Es un directorio

# Comentario multilinea usando HEREDOC

<<EJERCICIO
Ejercicio: El organizador de archivos

El objetivo es crear un script llamado organizador.sh que haga lo siguiente:

Pregunte al usuario la ruta de un directorio que desea organizar.

Dentro de ese directorio, cree subdirectorios para diferentes tipos de archivos, como Documentos, Imágenes, Videos, y Otros.

Mueva los archivos a sus respectivos subdirectorios. Por ejemplo, los archivos .jpg y .png irán a Imágenes, los .pdf y .docx a Documentos, etc.

Si un archivo no coincide con ninguna de las categorías predefinidas, lo moverá al directorio Otros.

El script debe manejar errores, como si el directorio especificado no existe.
EJERCICIO

# El -r es para que read interprete las barras invertidas (con s es para contrase;a)

echo -n "Ingresa la ruta que deseas organizar: " 
read -r ruta
if [ ! -d $ruta ]; then 
    echo "El dato proporcionado no es una ruta."
    exit 1 
else
    echo "creando carpetas..."
    mkdir -p "$ruta/Documentos"
    mkdir -p "$ruta/Imágenes"
    mkdir -p "$ruta/Videos"
    mkdir -p "$ruta/Otros"
fi

# Crear directorios de forma segura


# Bucle para iterar sobre los archivos., el /* es para que itere sobre todo el contenido dentro
for archivo in "$ruta"/*; do        
    if [ -f "$archivo" ]; then
        ext=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
        case "$ext" in
            jpg|jpeg|png|gif|webp)
                mv "$archivo" "$ruta/Imágenes/"
                ;;
            mp4|avi|mov|mkv|webp)
                mv "$archivo" "$ruta/Videos/"
                ;;
            pdf|docx|txt|xlsx)
                mv "$archivo" "$ruta/Documentos/"
                ;;
            *) # Este es el caso por defecto de case en bash
                mv "$archivo" "$ruta/Otros/"
                ;;
        esac # Para cerrar el case
    fi
done

echo "Organizacion de contenido correcto."
