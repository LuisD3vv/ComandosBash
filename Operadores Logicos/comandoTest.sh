#!/bin/bash


# se realizan con el camando test expresion o en su forma reducida => [expresion]

numero1=5
numero2=1


# con string
palabra="hola"

<<sintaxis

if condicion; then
    comandos
fi
sintaxis

if [[ $palabra = "hola" ]] ; then
    echo "La palabra es igual"
fi
# forma abreviada sin la palabra reservada test

if [[ "$numero2" -eq "$numero1" ]] ; then
    echo "${numero2} es igual que ${numero1}"
else echo "numero uno es mayor"
fi

# forma completa
if test $numero1 -gt $numero2 ; then
    echo "${numero1} es mayor que >> ${numero2}" 
fi

# Operaciones condicionales solo funcionan con numero enteros no string

# -eq valor1 es igual al valor2 equal
# -ge valor1 es mayor o igual que el valor2 greater or equal than
# -gt valor1 es mayor que el valor 2 greater than
# -le valor 1 es menor o igua que el valor 2  less or equal
# -lt valor 1 es menor que el valor2 less than
# -ne valor1 no es igual al valor 2 not equal
