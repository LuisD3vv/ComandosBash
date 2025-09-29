#!/bin/bash

# Leer informacion en tiempo de ejecucion
read nombre

echo "Hola, $nombre"

# o tambien

read -p "Ingresa tu nombre: " nombre

echo "Hola, $nombre"

# o con echo -n para evitar salto de linea por defecto