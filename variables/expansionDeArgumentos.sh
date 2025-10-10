#!/bin/bash

# Como contar la cantidad de elementos, es decir 

#  La cantidad de argumentos posicionales

echo "Numero de argumentos es : $#"

# dentro de ${} = ${#variable}

# con esta sintaxis devuelve la longitud de la cadena

nombre="Luisito"
echo ${#nombre} # 7


# ${variable#patron} y ${#variable##patron} # sirve para eliminar todo el texto desde el principio

ruta="home/lissandro/scripts/archivo.txt"
correo="Luismexico2006@gmail.com"

echo ${ruta#*/}    # Elimina lo más coincidencia mas corta hasta el primer "/"
echo ${ruta##*/}   # Elimina lo más largo hasta el ul "/"

# borrando ahora los puntos

echo ${correo#*@}
echo ${correo##*.}


# Eliminacion desde el final, literalmente es lo mismo mas que al reves


echo ${ruta%/*} # elimina la coincidencia mas corta al final
echo ${ruta%%/*} # elimina la coincidencia mas larga al final


# extraer una subcadena

echo ${nombre:0:10} # de la manera tradicional