#!/bin/bash

fecha=$(date +%Y-%m-%d)
ARCHIVO_BKUP="backup_$fecha.tar.gz"

if [[ -d ~/documentos_importantes ]]; then
    echo "La ruta existe y es un directorio"
    tar -czf $ARCHIVO_BKUP ~/documentos_importantes
    if [[ -e ~/Backups ]]; then
        mv "$ARCHIVO_BKUP" ~/Backups
        echo "Copia realizada exitosamente"
    else
        echo "El directorio backup no existe"
        mkdir -p "$HOME/Backups"
        echo "creando directorio"
        mv "$ARCHIVO_BKUP" ~/Backups
        echo "Copia realizada exitosamente"
    fi
else
    echo "El directorio no existe."
fi