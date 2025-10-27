#!/bin/bash

# Para hacer comparaciones de cadena podemos utilizar

# expresiones regulares para encontrar si una palabra contiene un caracter o una fra determianda


# Ejemplo 

read -p "Quieres continuar: " continuar


# cualquier palabra COMPLETA que cumpla con las condiciones
# ^ INICIE
# $ TERMINE
if [[ $continuar =~ ^(s|S|si|SI|is)$ ]]; then
    echo "Continuamos"
fi

#~

read -p "Ingresa tu correo: " correo

# la barra en este ejemplo es para escapar el punto

if [[ $correo =~ ^[[:alpha:]]+@.+\..{2,5}$ ]]; then
    echo "correo correcto"
fi
