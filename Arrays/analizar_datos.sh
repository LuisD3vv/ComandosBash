#!/bin/bash

LISTA_USUARIOS="Alice,45000;Bob,60000;Charlie,35000"

# El triple redirector funciona como un redirectori interno del valor de una variable y no un texto

# el IFS nos ayuda a separar las cadenas en tokens

while read -r linea;
do
    valor=$(tr ";" "\n" <<< "$linea") # igual funciona con cat pero en caso con un pipeline
    while IFS= read linea;
    do
        echo "($linea)"
        echo
    done <<< $valor
done <<< $LISTA_USUARIOS

echo "cambio exitosos"