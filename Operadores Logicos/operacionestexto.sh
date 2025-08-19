#!/bin/bash

v1="a"
v2="b"

cadena1="lissandro"
cadena2="eduardo"

if [ $v1 = $v2 ] ; then
    echo "Son iguales"
else 
    echo "No son iguales"
fi


if [ $cadena1 > $cadena2 ] ; then
    echo "La cadena uno es mas larga"
else 
    echo "Error"
fi



# Operadores de comparacion entre texto

# este en un truquito para comentar multilinea,cuidadito con ponerlo pegado
: "
cadena1 = cadeana2 son iguales
cadena1 > cadeana2 es mayor que cadena 2
cadena1 < cadeana2 es menor que cadena 2
cadena1 != cadeana2 son diferentes
-n cadena cierto si la longitud es distinta de cero

!expresion cierto si la expresion es falsa
expresion1 -a expresion2 cierto si ambas son iguales
expresion1 -o expresion2 cierto si al menos una es verdad
"


