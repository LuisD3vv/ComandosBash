#!/bin/bash

# Como declarar variables
# Se diferencias variables mayusculas y minusculas

variable="Hola" #  no deben contener espacios, too junto, de lo contrario sera comparacion porque es el mismo simbolo y no ==
numero1=10
numero2=30

# Para acceder a su contenido usaremos el simbolo del dolar seguido de su identificador

echo "numero uno =>" $numero1 # o 
echo "numero dos =>" ${numero2}

echo "El Script usa" $# "parametros"  # todos los parametros desde onsola
echo "Los tres primeros son: " $1, $2, $3 # variables por defecto

# La diferencia entre usar comillas simples y dobles es que las dobles interpretan el contenido y las simples solo interpretan texto
