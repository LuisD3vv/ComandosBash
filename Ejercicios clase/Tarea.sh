#!/bin/bash


# PRIMER EJERCICIO
# Calcular el area y el perimetro de un rectangulo

read -p "Ingresa la longitud: " longitud
read -p "Ingresa la anchura: " anchura

echo -e "\n"

echo  "Operacion con expansion de comandos(())"

formaExpansionArea=$(( $longitud * $anchura))
formaExpansionPerimetro=$(( (longitud + $anchura) * 2))

echo "Area: $formaExpansionArea"
echo -e "Perimetro: $formaExpansionPerimetro\n"


echo  "Operacion con expansion con let"

let "formaletArea=$longitud * $anchura"
let "formaletPerimetro=($longitud + $anchura) * 2"

echo "Area: $formaletArea"
echo -e "Perimetro: $formaletPerimetro\n"


echo  "Operacion con expansion expr"

formaexprArea=$(expr $longitud \* $anchura)
formaexprPerimetro=$(expr \( $longitud + $anchura \) \* 2)

echo "Area: $formaexprArea"
echo -e "Perimetro: $formaexprPerimetro\n"



# SEGUNDO EJERCICIO
echo "Ejercicio para conocer las diferentes operaciones"
read -p "Ingresa a: " a
read -p "Ingresa b: " b


suma=$( echo "scale=2;  $a + $b" | bc -l )
resta=$( echo "scale=2;  $a - $b" | bc -l )
division=$( echo "scale=5;  $a / $b" | bc -l )
multiplicacion=$( echo "scale=2;  $a * $b" | bc -l )

echo "La suma de $a + $b es $suma"
echo "La resta de $a - $b es $resta"
echo "La division de $a / $b es $division"
echo "La multiplicacion de $a * $b es $multiplicacion"

#TERCER EJERCICIO

echo -e "\n"

read -p "Ingresa el numero que deseas conocer si es par o impar: " numero

if [[ $numero%2 -eq 0 ]]; then
    echo "Tu numero $numero es par."
else
    echo "Tu numero $numero es impar"
fi


# CUARTO EJERCICIO

read -p "Ingresa el primer numero: " n1
read -p "Ingresa el segundo numero: " n2

read -p "Ingresa el primera cadena: " c1
read -p "Ingresa el segunda cadena: " c2


# Parametros se cuenta con $#, pero aqui no se usan.

if [[ -n $n1 && -n $n2 ]]; then
    echo "Los valores numericos se ingresaron"
    if [[ $n1 -gt $n2 ]]; then
        echo "Numero uno $n1 > $n2."
    elif [[ $n2 -gt $n1 ]]; then
        echo "Numero dos $n2 > $n1."
    else
        echo -e "Numero 1 y numero 2 son iguales \nn1 {$n1} = n2 {$n2}"
    fi
else
    echo "no hay valores"
fi

# llevan  comillas
if [ "$c1" == "$c2" ]; then
    echo "Las cadenas son iguales $c1 y $c2"
elif [ "$c1" != "$c2" ]; then
    echo "Las cadenas son diferentes $c1 y $c2"
else 
    echo "no se"
fi
