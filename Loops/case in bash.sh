#!/bin/bash

read -p "ingresa un dia de la semana." dia

case $dia in
    "Lunes")
        echo "Este es Lunes"
    ;;
    "Martes")
        echo "Este es martes."
    ;;
    "Miercoles")
        echo "Este es Miercoles."
    ;;
    "Jueves")
        echo "Este seguramente es jueves"
    ;;
    "Viernes")
        echo "Viernnes porfin"
    ;;
    *)
        echo "Dia desconcido pues (me dio hueva el sabdo y el domingo)."
    ;;
esac 

# Tambien permite la comparacion de patrones complejos

echo "Introduce una cadena"
read -p ">> " input

case $input in
    [0-9]*)
    echo "La entrada es numerica"
    ;;
    [a-z]*)
    echo "La entrada no es numerica"
    ;;
    *)
    echo "Entrada no reconocida"
    ;;
esac