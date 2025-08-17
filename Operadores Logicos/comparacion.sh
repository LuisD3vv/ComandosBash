#!/bin/bash


# se realizan con el camando test expresion o en su forma reducida => [expresion]

numero1=5
numero2=1

# forma comprimida
if [ "$numero2" -gt "$numero1" ] ; then
    echo "${numero2} es mayor que ${numero1}"
else echo "El otro numero es mayor >> ${numero1}"
fi
# forma completa
if test $numero1 -gt $numero2 ; then
    echo "${numero1} es mayor que >> ${numero2}" 
fi
# Operaciones condicionales solo funcionan con numero enteros no string

# -eq valor1 es igual al valor2
# -ge valor1 es mayor o igual que el valor2
# -gt valor1 es mayor que el valor 2
# -le valor 1 es menor o igua que el valor 2
# -lt valor 1 es menor que el valor2
# -ne valor1 no es igual al valor 2