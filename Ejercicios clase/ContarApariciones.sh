#!/bin/bash
#Codigo hecho por Luis Alejandro Aguilar Soberanes LICDD 2-1


# Funcion para evitar reutilizar muchos echo
linea () { echo "- - - - - - - - - - - - - - - - - - -"; }


# Declaracion de variables
fecha=$(date +%Y-%m-%d)
letras=0
numeros=0
car_especiales=0
minusculas=0
mayusculas=0
queespeciales=()

clear
# entrada del usuario
echo "=================================================="
echo "Ingrese una cadena de texto (con o sin espacios)"
read  -p ">> " cadena
echo
if [[ -z $cadena ]]; then
    echo "Porfavor ingresa una cadena."
    exit 1
fi
longitud=${#cadena}


# Iteracion sobre la cadena
for (( i=0; i<$longitud; i++ )); do
    caracter=${cadena:$i:1}
    if [[ "$caracter" =~ [0-9] ]]; then
        ((numeros++))
        #  se habia hecho con =~
    elif [[ "$caracter" == "#" || "$caracter" == "$" || "$caracter" == "&" || "$caracter" == "!" || "$caracter" == "@" ]]; then
        # meter elemento al array
        queespeciales+=("$caracter")
        ((car_especiales++))
    elif [[ "$caracter" =~ [A-Z] ]]; then
        ((mayusculas++))
        ((letras++))
    elif [[ "$caracter" =~ [a-z] ]]; then
        ((minusculas++))
        ((letras++))
    fi
done


if [[ $numeros -eq 0  &&  $car_especiales -eq 0  && $letras -eq 0  ]]; then
    echo "Error cadena vacia."
    exit 1
else
    if [[ $numeros -eq 0 ]]; then
        # se llama sin parentesis
        linea
        echo "No hay apariciones numericas en la cadena proporcionada."
    else
        echo "- - - - - - - - - - - - - - - - - - -"
        echo "Numero de apariciones numericas en la cadena $cadena: $numeros"
    fi
    if [[ $letras -eq 0 ]]; then
        linea
        echo "La cadena no contiene caracteres alfabeticos A-Z"
    else
        
        linea
        echo "Numero de caracteres en la cadena $cadena: $letras"
        echo "de los cuales $mayusculas son mayusculas y $minusculas son minusculas."
    fi
    if [[ $car_especiales -eq 0 ]]; then
        echo "- - - - - - - - - - - - - - - - - - -"
        echo "No hay caracteres especiales en la cadena proporcionada."
    else
        linea
        echo "Numero de caracteres especiales en la cadena $cadena: $car_especiales"
        echo "Caracteres especiales en la cadena:"
        #[@] es una forma segura para iterar sore un vecrtor, maneja correctamente los espacios
        for c in "${queespeciales[@]}"; do
            echo -n "[$c]"
        done
    fi
fi

linea
echo 
echo "Recuento: "
echo "Cadena: $cadena"
echo "Caracteres normales: $letras"
echo "Caracteres especiales: $car_especiales"
echo "Numeros: $numeros"
echo "Fecha actual: - $fecha -"
echo "Hecho por Luis Aguilar Soberanes | FIC - Ciencia de datos - GPO - 2-1"
echo "=================================================="