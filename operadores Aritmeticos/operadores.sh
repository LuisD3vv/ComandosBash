#!/bin/bash

# Para que se ejecute una operacion se debe de poner sin espacios
# y dentro de $(())

read -p "Introduca el primer numero: " n1
read -p "Introduca el segundo numero: " n2
echo "La Suma de ${n1}+${n2} = $((n1 + n2))"
echo "La Resta de ${n1}-${n2} = $((n1 - n2))"
echo "La Division de ${n1}/${n2} = $((n1 / n2))"
echo "El Resto(modulo) de ${n1}%${n2} = $((n1 % n2))"
echo "La Multiplicacion de ${n1}*${n2} = $((n1 * n2))"

aleatorio=$(( ($RANDOM % 10 ) + 1))
echo El numero aleatorio de hoy es $aleatorio


echo "Hecho por LissandroDEV"
