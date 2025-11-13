#!/bin/bash

PATRON_BUSQUEDA="Error"

ruta="/home/lissandro/Escritorio/Programacion/ComandosBash/Ejercicios/creacion archivos/MiProyectoBash/informacion.txt"

# siempre tener cuidado de protegerr las variables tipo string con comillas.
resultado=$(grep -ci "$PATRON_BUSQUEDA" "$ruta")
echo $resultado