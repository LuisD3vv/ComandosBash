#!/bin/bash

# cada espacio se interpreta como una nueva variable
echo -n # impide el salto de linea -n
read -p "Introduzca su nombre >> "  nombre apellido apellido2
echo Usted se llama $nombre $apellido $apellido2


# En caso de ser mas los valores que las varibles los valores restantes se iran a la ultima variable 