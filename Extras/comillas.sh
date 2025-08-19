#!/bin/bash

v1="Hola"
v11="Adios"
# con interpretacion
echo "El contenido de la v1 es ${v11} y el primer parametro es $1"
# sin interpretacion, no conoce que es una variable
echo 'El contenido de v1 es $v1 y el primer parametro es $1'


# Las comillas tambien nos son utles cuando alguno de los parameteros ocupa un espacio entre el mismo, asi mismo podemos usar contrabarra