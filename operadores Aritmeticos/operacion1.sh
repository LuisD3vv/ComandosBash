#!bin/bash

# Para que se ejecute una operacion se debe de poner sin espacios
# y dentro de $(())

read -p "Introduca el primer numero: " n1
read -p "Introduca el segundo numero: " n2
echo -n "La suma es  $((n1 + n2))"
echo -n "La resta es  $((n1 - n2))"
echo -n "La division es  $((n1 / n2))"
echo -n "La multiplicacion es  $((n1 * n2))"

echo "hecho por lissandrito"

# para el numero aleatorio es (($RANDOM%10))